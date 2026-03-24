# SvelteKit Build Timeout — Reproducible Example

Reproduces the SvelteKit build hang described in [sveltejs/kit#15554](https://github.com/sveltejs/kit/issues/15554).

## The Issue

Building with **Vite 8** (which ships with rollup/rolldown) hangs completely on Linux. Previously this worked on Mac and Linux with Vite 7. On Mac it builds in ~30 seconds, but hangs indefinitely in CI (Linux) and local Docker (Linux).

## Reproduction Setup

This project contains:

- **100 Svelte components** in `src/lib/components/` — each using a different [bits-ui](https://bits-ui.com) primitive (Accordion, Button, Checkbox, Progress, Separator, Switch, Tabs, Collapsible, Avatar, Slider) with [Tailwind CSS](https://tailwindcss.com) v4 utility classes.
- A **`/reproduction` page** (`src/routes/reproduction/+page.svelte`) that imports and renders all 100 components simultaneously.
- **Vite 8** (pinned in `package.json`) to reproduce the hang condition.

## Steps to Reproduce

```sh
npm install
npm run build
```

On Linux (especially in Docker / CI), the build may hang indefinitely during the `vite-plugin-sveltekit-guard` plugin phase (which accounts for ~80% of build time according to Rolldown's `PLUGIN_TIMINGS` output).

## Observed Behavior

| Environment     | Vite 7   | Vite 8     |
|-----------------|----------|------------|
| macOS           | ✅ Fast   | ✅ Fast    |
| Linux (Docker)  | ✅ Fast   | ❌ Hangs   |
| Linux (CI)      | ✅ Fast   | ❌ Hangs   |

Build warnings observed with Vite 8 / rolldown:

```
[PLUGIN_TIMINGS] Warning: Your build spent significant time in plugins:
  - vite-plugin-sveltekit-guard (80%)
  - vite-plugin-svelte:compile (10%)
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
