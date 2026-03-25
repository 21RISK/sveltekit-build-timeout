# SvelteKit Build Stall — Reproducible Example

[![Build (reproduce hang)](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml/badge.svg)](https://github.com/21RISK/sveltekit-build-timeout/actions/workflows/build.yml)

Reproduces the SvelteKit build-time regression described in [sveltejs/kit#15554](https://github.com/sveltejs/kit/issues/15554).

## The Issue

Building a large SvelteKit project with **Vite 8** (which ships rolldown) **stalls on Linux**.
The `vite build` process starts, prints some accessibility warnings, then **stops producing any
output for 60+ seconds** — twice per build — before either recovering or hanging permanently.
The process is still alive and consuming CPU during the silent period; it has simply stopped
making observable progress.

This stall occurs **regardless of available RAM or CPU**. Giving the build 16 GB RAM and 16 CPUs
does not prevent it. It is a concurrency issue in rolldown's async plugin-hook dispatch, not a
resource constraint.

### Root cause

`vite-plugin-sveltekit-guard` (part of `@sveltejs/kit`) registers an **async `resolveId` hook**
that calls `this.resolve(id, importer, { skipSelf: true })` for every imported module:

```js
async resolveId(id, importer, options) {
  const resolved = await this.resolve(id, importer, { ...options, skipSelf: true });
  // build import-relationship map …
}
```

rolldown resolves modules in parallel using its Rust thread pool.  When 10 000 routes each
import 4–5 bits-ui components (which themselves have deep import trees), the number of
concurrent `this.resolve()` calls saturates rolldown's async task queue.  All workers end up
waiting for each other's resolutions to complete — a priority-inversion deadlock.  The process
remains "running" (the Rust pool is spinning) but emits zero output until the backlog drains.
On some Linux environments the backlog never drains and the build hangs permanently.

### What you observe

```
$ npm run build
vite v8.0.2 building ssr environment for production…
[vite-plugin-svelte] src/routes/page-010/+page.svelte:46:13 '#' is not a valid href
[vite-plugin-svelte] src/routes/page-020/+page.svelte:46:13 '#' is not a valid href
… (10 more warnings) …
                              ← 60+ seconds of silence  (THE STALL)
✓ 10742 modules transformed.
… (more warnings) …
                              ← 60+ seconds of silence  (THE STALL again)
✓ 20742 modules transformed.
✓ built in 2m 30s
```

A normal SvelteKit project (< 100 routes) builds in under 30 s.

## Reproduction Setup

This project contains:

- **10,000 separate SvelteKit routes** (`src/routes/page-001/` → `src/routes/page-10000/`),
  each being a full page that uses **4–5** [bits-ui](https://bits-ui.com) primitives
  (e.g. Accordion + Progress + Tabs + Button + Separator) with
  [Tailwind CSS](https://tailwindcss.com) v4 utility classes.
- **1,000 shared Svelte components** in `src/lib/components/` — each using multiple bits-ui
  primitives — used by the `/reproduction` index page.
- A **`/reproduction` index page** linking to all 10,000 routes.
- **Vite 8** (pinned in `package.json`) to reproduce the condition.

The 10,000-route structure gives rolldown's resolver enough concurrent work to trigger the
async task-queue saturation described above.

## Steps to Reproduce

### Option A — local (Node.js)

```sh
npm install
npm run build
```

Watch the terminal.  You will see accessibility warnings appear, then **60+ seconds of
complete silence** (twice), before the build eventually completes (~2.5 min total).
The silent periods are the stall.

### Option B — Docker

```sh
docker build -t sveltekit-hang .
docker run --rm sveltekit-hang          # stalls; may hang permanently
docker run --rm --cpus 2 sveltekit-hang # same stall
```

The stall occurs with any memory or CPU setting.

### Option C — CI (this repository)

The [build workflow](.github/workflows/build.yml) runs `npm run build` on `ubuntu-latest` and
uses a **stall-detection script** that fails the step when the build produces no output for more
than 30 seconds.  Because the genuine stall lasts 60–74 s (well above the 30 s threshold), the
step fails with:

```
::error::Build stalled — no output for 63s (threshold: 30s)
The build process (rolldown + vite-plugin-sveltekit-guard) is alive
but stopped producing output. This reproduces the genuine stall
described in sveltejs/kit#15554. It is NOT a resource constraint:
the stall occurs regardless of available RAM or CPU.
```

The failure exit code is **1** (stall detected), not 124 (bash `timeout` killed), making the
root cause unambiguous in the CI log.

## Observed Stall Timeline (GitHub Actions, ubuntu-latest)

```
11:58:15  Build started
11:58:16  [vite-plugin-svelte] !!! rolldown: 1.0.0-rc.11, vite: 8.0.2 !!!
11:58:21  [vite-plugin-svelte] page-010/+page.svelte  '#' is not a valid href
11:58:21  … 9 more warnings …
11:58:22  [vite-plugin-svelte] page-040/+page.svelte  '#' is not a valid href

          ████████  63 s of silence  ████████   ← STALL #1

11:59:25  [vite-plugin-svelte] page-040/+page.svelte  '#' is not a valid href (client pass)
11:59:26  … 9 more warnings …

          ████████  74 s of silence  ████████   ← STALL #2

12:00:40  [PLUGIN_TIMINGS] vite-plugin-sveltekit-guard  56 %
12:00:42  ✓ built in 1m 18s
12:00:44  ✓ built in 2m 24s
```

Plugin timing (from rolldown, client phase):

```
[PLUGIN_TIMINGS] Warning: Your build spent significant time in plugins:
  - vite-plugin-sveltekit-guard     56 %
  - vite-plugin-svelte:load-custom  30 %
  - vite-plugin-sveltekit-virtual-modules  6 %
  - vite-plugin-svelte:compile       4 %
```

`vite-plugin-sveltekit-guard` consuming 56 % of build time is the fingerprint of the issue.
The stall-detector CI step catches the first 63 s gap and fails with exit 1.

## Route Structure

```
src/routes/
  page-001/+page.svelte      ← Accordion + Progress + Tabs + Button + Separator
  page-002/+page.svelte      ← Switch + Checkbox + Slider + Button + Separator
  page-003/+page.svelte      ← Avatar + Tabs + Collapsible + Separator + Button
  page-004/+page.svelte      ← Progress + Slider + Tabs + Separator + Button
  page-005/+page.svelte      ← Accordion + Collapsible + Avatar + Separator + Button
  …
  page-10000/+page.svelte    ← (cycles through 5 multi-component templates × 2000 rounds)
  reproduction/+page.svelte  ← index linking to all 10 000 routes
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
