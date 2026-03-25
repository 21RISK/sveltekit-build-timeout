# SvelteKit Build Timeout — Reproducible Example

[![Build (reproduce hang)](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml/badge.svg)](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml)

Reproduces the SvelteKit build hang described in [sveltejs/kit#15554](https://github.com/sveltejs/kit/issues/15554).

## The Issue

Building with **Vite 8** (which ships with rolldown) hangs completely on Linux. Previously this worked on Mac and Linux with Vite 7. On Mac it builds quickly, but hangs indefinitely in CI (Linux) and local Docker (Linux).

## Reproduction Setup

This project contains:

- **10,000 separate SvelteKit routes** (`src/routes/page-001/` → `src/routes/page-10000/`), each being a full page that uses **4–5** [bits-ui](https://bits-ui.com) primitives simultaneously (e.g. Accordion + Progress + Tabs + Button + Separator) with [Tailwind CSS](https://tailwindcss.com) v4 utility classes.
- **1,000 shared Svelte components** in `src/lib/components/` — each using multiple bits-ui primitives — used by the `/reproduction` index page.
- A **`/reproduction` index page** linking to all 10,000 routes.
- **Vite 8** (pinned in `package.json`) to reproduce the hang condition.

The 10,000-route structure is the key load: SvelteKit's `vite-plugin-sveltekit-guard` must process every route during the build, and with routes each importing 4–5 bits-ui primitives + Tailwind, the plugin's share of total build time grows dramatically — timing out in CI environments.

## Steps to Reproduce

### Option A — local (Node.js)

```sh
npm install
npm run build
```

### Option B — Docker (CPU-constrained, recommended)

```sh
# Build the image once
docker build -t sveltekit-hang .

# Run with a single CPU — simulates constrained CI.
# The build takes ~10 minutes and will time out on a 10-min CI limit.
docker run --rm --cpus 1 --memory 4g sveltekit-hang
```

### Option C — CI (this repository)

The [build workflow](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml)
runs `npm run build` on `ubuntu-latest` with a **10-minute timeout**.
Because GitHub's shared 2-CPU runners are more constrained than the numbers below,
the build is expected to exceed this limit and the job will be cancelled.

## Observed Timing (Docker, Linux)

| CPU limit | Build time | Guard plugin share |
|-----------|------------|--------------------|
| 4 CPUs (unconstrained) | **2m 12s** | 56 % |
| 1 CPU (`--cpus 1`)     | **5m 42s** | 57 % |
| 0.5 CPU (`--cpus 0.5`) | **9m 48s** | 56 % |
| GitHub Actions (2 CPUs shared) | **> 10 min (times out)** | — |

Build output with Vite 8 / rolldown (10 000 routes, `--cpus 0.5`):

```
[PLUGIN_TIMINGS] Warning: Your build spent significant time in plugins. Here is a breakdown:
  - vite-plugin-sveltekit-guard (56%)
  - vite-plugin-svelte:load-custom (29%)
  - vite-plugin-sveltekit-virtual-modules (6%)
  - vite-plugin-svelte:compile (4%)

✓ built in 9m 48s
```

`vite-plugin-sveltekit-guard` consuming 56 %+ of build time is the fingerprint of the issue.
Build time scales roughly linearly with CPU throttle, confirming the guard plugin is the bottleneck.
On GitHub Actions' shared runners (which deliver less effective CPU throughput than
a dedicated 0.5-CPU Docker slice) the build exceeds a 10-minute CI limit.

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
