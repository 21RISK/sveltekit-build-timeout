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
  <title>Page 49 — Slider Controls</title>
  <meta name="description" content="Route 049 in the build-timeout reproduction. Uses bits-ui Slider with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-rose-100 px-2.5 py-0.5 text-xs font-semibold text-rose-700">
          Slider
        </span>
        <span class="text-xs text-neutral-400">Route 049</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Slider Controls</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #49 — testing SvelteKit build performance with bits-ui
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
      <span>Page 049 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-048" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-050" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-049 */
  .page-page-049 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-049:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-049__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-049__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-049__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-049__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-049__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-049__action {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 0.5rem 1rem;
    border-radius: 0.5rem;
    font-size: 0.875rem;
    font-weight: 500;
    cursor: pointer;
    background-color: #2563eb;
    color: #ffffff;
    border: none;
    transition: background-color 0.15s ease, transform 0.1s ease;
  }
  .page-page-049__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-049__action:active {
    transform: scale(0.98);
  }
  .page-page-049__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-049__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-049__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-049__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-049__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-049__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
