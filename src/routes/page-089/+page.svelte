<script lang="ts">
  import { Slider } from 'bits-ui';
  let controls = $state([
    { id: 'volume', label: 'Volume', value: 65, max: 100, step: 1, unit: '%' },
    { id: 'speed', label: 'Playback Speed', value: 1, max: 2, step: 0.25, unit: 'x' },
    { id: 'zoom', label: 'Zoom Level', value: 100, max: 200, step: 10, unit: '%' },
    { id: 'quality', label: 'Quality', value: 80, max: 100, step: 5, unit: '%' },
  ]);
</script>

<svelte:head>
  <title>Page 89 — Slider Controls</title>
  <meta name="description" content="Route 089 in the build-timeout reproduction. Uses bits-ui Slider with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-emerald-100 px-2.5 py-0.5 text-xs font-semibold text-emerald-700">
          Slider
        </span>
        <span class="text-xs text-neutral-400">Route 089</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Slider Controls</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #89 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Slider</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6 rounded-2xl border border-neutral-200 bg-white p-6 shadow">
    {#each controls as ctrl}
      <div class="space-y-2">
        <div class="flex items-center justify-between">
          <span class="text-sm font-medium text-neutral-900">{ctrl.label}</span>
          <span class="tabular-nums text-sm text-neutral-500">{ctrl.value}{ctrl.unit}</span>
        </div>
        <Slider.Root
          bind:value={ctrl.value}
          max={ctrl.max}
          step={ctrl.step}
          class="relative flex h-5 w-full touch-none select-none items-center"
        >
          <div class="relative h-1.5 w-full grow overflow-hidden rounded-full bg-neutral-200">
            <Slider.Range class="absolute h-full rounded-full bg-blue-600" />
          </div>
          <Slider.Thumb class="block h-4 w-4 rounded-full border border-blue-600/20 bg-white shadow-[0_1px_4px_rgba(0,0,0,0.15)] ring-blue-600/20 transition-[box-shadow] hover:shadow-[0_1px_4px_rgba(0,0,0,0.2)] focus-visible:outline-none focus-visible:ring-[3px]" />
        </Slider.Root>
      </div>
    {/each}
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 089 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-088" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-090" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
