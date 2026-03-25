# SvelteKit Build Timeout — Reproducible Example

[![Build (reproduce hang)](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml/badge.svg)](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml)

Reproduces the SvelteKit build-time regression described in [sveltejs/kit#15554](https://github.com/sveltejs/kit/issues/15554).

## The Issue

Building with **Vite 8** (which ships with rolldown) takes dramatically longer on Linux than Vite 7 did. The culprit is `vite-plugin-sveltekit-guard`, which consumes 56–57 % of total build time when the project has a large number of routes. On a project with 10 000 routes the build time scales directly with available CPU, making it too slow for typical CI time budgets.

The build does **not** hang indefinitely — it completes given enough time. But at the CPU throughput GitHub Actions' shared `ubuntu-latest` runners deliver (2 CPUs), the build takes longer than a 3-minute per-step limit, causing the CI job to fail.

## Reproduction Setup

This project contains:

- **10,000 separate SvelteKit routes** (`src/routes/page-001/` → `src/routes/page-10000/`), each being a full page that uses **4–5** [bits-ui](https://bits-ui.com) primitives simultaneously (e.g. Accordion + Progress + Tabs + Button + Separator) with [Tailwind CSS](https://tailwindcss.com) v4 utility classes.
- **1,000 shared Svelte components** in `src/lib/components/` — each using multiple bits-ui primitives — used by the `/reproduction` index page.
- A **`/reproduction` index page** linking to all 10,000 routes.
- **Vite 8** (pinned in `package.json`) to reproduce the condition.

The 10,000-route structure is the key load: SvelteKit's `vite-plugin-sveltekit-guard` must process every route during the build, and with routes each importing 4–5 bits-ui primitives + Tailwind, the plugin's share of total build time grows dramatically.

## Steps to Reproduce

### Option A — local (Node.js)

```sh
npm install
npm run build
```

### Option B — Docker (CPU-constrained)

```sh
# Build the image once
docker build -t sveltekit-hang .

# Run with a constrained CPU count to simulate CI.
docker run --rm --cpus 2 --memory 6g sveltekit-hang   # ~4 min  (GitHub CI equivalent)
docker run --rm --cpus 1 --memory 4g sveltekit-hang   # ~6 min
docker run --rm --cpus 0.5 --memory 4g sveltekit-hang # ~10 min
```

### Option C — CI (this repository)

The [build workflow](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml)
runs `npm run build` on `ubuntu-latest` with a **160-second (2m 40s) build-step timeout**.
At 2 CPUs (GitHub runner spec) the build takes ~3m 4s, so the step reliably fails.

## Observed Timing (Docker, Linux)

| CPU limit | Build time | Guard plugin share |
|-----------|------------|--------------------|
| 4 CPUs (unconstrained) | **2m 12s** | 56 % |
| 2 CPUs (`--cpus 2`)    | **3m 04s** | 57 % |
| 1 CPU (`--cpus 1`)     | **5m 42s** | 57 % |
| 0.5 CPU (`--cpus 0.5`) | **9m 48s** | 56 % |

Build output with Vite 8 / rolldown (10 000 routes, `--cpus 2`):

```
[PLUGIN_TIMINGS] Warning: Your build spent significant time in plugins. Here is a breakdown:
  - vite-plugin-sveltekit-guard (57%)
  - vite-plugin-svelte:load-custom (29%)
  - vite-plugin-sveltekit-virtual-modules (6%)
  - vite-plugin-svelte:compile (4%)

✓ built in 3m 4s
```

`vite-plugin-sveltekit-guard` consuming 57 %+ of build time is the fingerprint of the issue.
Build time scales with available CPU, confirming the guard plugin is the bottleneck.
GitHub Actions' `ubuntu-latest` provides 2 CPUs; the build takes ~3m 4s (184 s) there,
which exceeds the 160-second (2m 40s) step limit in the CI workflow and causes the job to fail.

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
