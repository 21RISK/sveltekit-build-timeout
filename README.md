# SvelteKit Build Timeout — Reproducible Example

[![Build (reproduce hang)](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml/badge.svg)](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml)

Reproduces the SvelteKit build-time regression described in [sveltejs/kit#15554](https://github.com/sveltejs/kit/issues/15554).

## The Issue

Building with **Vite 8** (which ships with rolldown) suffers from two compounding problems on constrained Linux environments:

1. **CPU bottleneck** — `vite-plugin-sveltekit-guard` consumes 56–57 % of total build time, and build time scales linearly with available CPU throughput.
2. **Memory bottleneck** — rolldown holds the full module graph of all 10 000 routes in memory simultaneously. The build requires **~3 GB RAM** to complete. With less than 3 GB, the Node.js process is OOM-killed (exit code 137) mid-build, which looks like an indefinite hang to the user.

### What the "stall" actually is

The apparent hang has two distinct causes depending on the environment:

| Scenario | What happens | User sees |
|----------|-------------|-----------|
| < 2 GB RAM | Linux OOM killer sends SIGKILL during SSR transform pass | Process stops with no output; terminal freezes |
| 2–3 GB RAM | SSR pass completes; OOM kill during client transform | Build progress stops mid-way with no error message |
| 3 GB RAM (exact) | Build completes but GC pauses last 30–60 s | CPU drops to 15–20 % for extended stretches; looks frozen |
| 3 GB+ RAM, 2 CPUs | Build completes in ~4 min | Exceeds CI step time budgets |

The GC-pressure scenario (3 GB, 2 CPUs) is reproduced in this repository's CI workflow.

## Reproduction Setup

This project contains:

- **10,000 separate SvelteKit routes** (`src/routes/page-001/` → `src/routes/page-10000/`), each being a full page that uses **4–5** [bits-ui](https://bits-ui.com) primitives simultaneously (e.g. Accordion + Progress + Tabs + Button + Separator) with [Tailwind CSS](https://tailwindcss.com) v4 utility classes.
- **1,000 shared Svelte components** in `src/lib/components/` — each using multiple bits-ui primitives — used by the `/reproduction` index page.
- A **`/reproduction` index page** linking to all 10,000 routes.
- **Vite 8** (pinned in `package.json`) to reproduce the condition.

The 10,000-route structure forces `vite-plugin-sveltekit-guard` to build and traverse a massive import-relationship map (a `Map<string, Set<string>>`) for every resolved module across all routes. This map can exceed 1 GB on its own. Combined with rolldown's in-memory module graph, peak heap usage exceeds 2.5 GB during the SSR pass alone.

## Steps to Reproduce

### Option A — local (Node.js)

```sh
npm install
npm run build
```

Requires ~3 GB of free heap. On a machine with 4+ CPUs this completes in ~2–3 minutes.

### Option B — Docker (resource-constrained, recommended)

```sh
# Build the image once
docker build -t sveltekit-hang .

# Reproduce the OOM-kill scenario (< 2 GB):
docker run --rm --cpus 2 --memory 1g sveltekit-hang   # killed ~50s in (exit 137)

# Reproduce the GC-stall scenario (exactly 3 GB):
docker run --rm --cpus 2 --memory 3g sveltekit-hang   # completes in ~4m 16s with GC pauses

# Reproduce the CPU-limit scenario (ample RAM):
docker run --rm --cpus 2 --memory 6g sveltekit-hang   # ~2m 24s — exceeds 90 s step limit
docker run --rm --cpus 1 --memory 4g sveltekit-hang   # longer
docker run --rm --cpus 0.5 --memory 4g sveltekit-hang # even longer
```

### Option C — CI (this repository)

The [build workflow](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml)
runs `npm run build` on `ubuntu-latest` (2 CPUs, ~15 GB RAM) with a **90-second (1m 30s)
build-step timeout**. The build consistently takes ~2m 24s (SSR phase ~70s + client phase ~78s),
always exceeding the limit. The workflow also prints `free -h` before the build so you can
see the runner's available memory.

## Observed Behaviour by Resource Level (Docker, Linux)

### CPU timing (ubuntu-latest / 2 CPUs, ~15 GB RAM)

| Environment | Build time | Notes |
|-------------|------------|-------|
| SSR phase | **~70s** | `vite-plugin-sveltekit-guard` is the bottleneck |
| Client phase | **~78s** ("1m 18s") | Guard plugin: 56%, svelte:load-custom: 30% |
| **Total** | **~2m 24s (144s)** | Exceeds 90-second step limit |

Plugin timing breakdown (client phase, from actual CI run):

```
[PLUGIN_TIMINGS] Warning: Your build spent significant time in plugins. Here is a breakdown:
  - vite-plugin-sveltekit-guard (56%)
  - vite-plugin-svelte:load-custom (30%)
  - vite-plugin-sveltekit-virtual-modules (6%)
  - vite-plugin-svelte:compile (4%)

✓ built in 2m 24s
```

`vite-plugin-sveltekit-guard` consuming 56 % of build time is the fingerprint of the issue.
The plugin builds a `Map<module, Set<importer>>` import-relationship graph for every resolved
module; across 10 000 routes × 4–5 bits-ui imports each this map becomes enormous.
GitHub Actions' `ubuntu-latest` provides 2 CPUs and ~15 GB RAM; the build takes ~2m 24s (144 s)
there, which exceeds the 90-second (1m 30s) step limit in the CI workflow and causes the job
to fail.

### Memory behaviour (2 CPUs)

| Memory limit | Outcome | Exit code |
|-------------|---------|-----------|
| 512 MB | OOM killed ~35 s into SSR pass | 137 (SIGKILL) |
| 1 GB | OOM killed ~50 s into SSR pass | 137 (SIGKILL) |
| 2 GB | OOM killed ~155 s (SSR completes, client pass fails) | 137 (SIGKILL) |
| 3 GB | Completes in **4m 16s** with extended GC pauses | 0 |
| 6 GB | Completes in **3m 04s** | 0 |

> **Why 3 GB is slower than 6 GB:** at the 3 GB limit Node.js runs aggressive major GC cycles
> to stay within the limit. These cause 30–60 second stretches where the process appears frozen
> (CPU falls to 15–20 %). This is the "stall" users observe on memory-constrained runners.

## Route Structure

```
src/routes/
  page-001/+page.svelte      ← Accordion + Progress + Tabs + Button + Separator
  page-002/+page.svelte      ← Switch + Checkbox + Slider + Button + Separator
  page-003/+page.svelte      ← Avatar + Tabs + Collapsible + Separator + Button
  page-004/+page.svelte      ← Progress + Slider + Tabs + Separator + Button
  page-005/+page.svelte      ← Accordion + Collapsible + Avatar + Separator + Button
  ...
  page-10000/+page.svelte    ← (cycles through 5 multi-primitive templates × 2000 rounds)
  reproduction/+page.svelte  ← index linking to all 10,000 routes
```

## Developing

```sh
npm install
npm run dev
```

## Building

```sh
npm run build
npm run preview
```

> To deploy, you may need to install an [adapter](https://svelte.dev/docs/kit/adapters) for your target environment.
