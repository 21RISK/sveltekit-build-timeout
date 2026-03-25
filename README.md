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

The 10,000-route structure is the key load: SvelteKit's `vite-plugin-sveltekit-guard` must process every route during the build, and with routes each importing 4–5 bits-ui primitives + Tailwind, the plugin's share of total build time grows dramatically — hanging indefinitely in constrained environments.

## Steps to Reproduce

```sh
npm install
npm run build
```

On Linux (especially in Docker / CI), the build hangs indefinitely during the `vite-plugin-sveltekit-guard` plugin phase. On unconstrained Linux runners it completes but takes **2+ minutes** — the bottleneck is clearly visible in Rolldown's plugin timing output.

## Observed Behavior

| Environment            | Vite 7   | Vite 8 (rolldown) |
|------------------------|----------|-------------------|
| macOS                  | ✅ Fast   | ✅ Fast           |
| Linux (sandbox, 10 000 routes) | ✅ Fast | ⚠️ ~2m 12s, guard=56% |
| Linux (Docker)         | ✅ Fast   | ❌ Hangs          |
| Linux (CI constrained) | ✅ Fast   | ❌ Hangs          |

Build output with Vite 8 / rolldown (10 000 routes, Linux sandbox):

```
[PLUGIN_TIMINGS] Warning: Your build spent significant time in plugins. Here is a breakdown:
  - vite-plugin-sveltekit-guard (56%)
  - vite-plugin-svelte:load-custom (29%)
  - vite-plugin-sveltekit-virtual-modules (6%)
  - vite-plugin-svelte:compile (4%)

✓ built in 2m 12s
```

`vite-plugin-sveltekit-guard` consuming 56–80%+ of build time is the fingerprint of the issue. In constrained environments (Docker, CI with limited IPC/threading resources) this becomes an indefinite hang rather than a slow-but-finishing build.

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
