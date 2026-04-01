<script lang="ts">
  import { Separator } from 'bits-ui';
  const links = ['Documentation', 'API Reference', 'Changelog', 'Status'];
  const stats = [
    { label: 'Total Routes', value: '50+' },
    { label: 'Components', value: '100+' },
    { label: 'Build Time', value: '???' },
    { label: 'Status', value: 'Testing' },
  ];
</script>

<svelte:head>
  <title>Page 30 — Separator Layout</title>
  <meta name="description" content="Route 030 in the build-timeout reproduction. Uses bits-ui Separator with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-emerald-100 px-2.5 py-0.5 text-xs font-semibold text-emerald-700">
          Separator
        </span>
        <span class="text-xs text-neutral-400">Route 030</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Separator Layout</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #30 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Separator</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="rounded-2xl border border-neutral-200 bg-white p-6 shadow space-y-6">
    <div>
      <h3 class="text-sm font-semibold text-neutral-900">Quick Links</h3>
      <Separator.Root class="my-3 h-px w-full bg-neutral-100" />
      <nav class="flex flex-wrap gap-x-1 gap-y-0.5">
        {#each links as link, i}
          {#if i > 0}
            <Separator.Root orientation="vertical" class="mx-1 h-4 w-px self-center bg-neutral-200" />
          {/if}
          <a href="#" class="text-sm text-blue-600 hover:underline">{link}</a>
        {/each}
      </nav>
    </div>
    <Separator.Root class="h-px w-full bg-neutral-100" />
    <div>
      <h3 class="text-sm font-semibold text-neutral-900 mb-3">Build Stats</h3>
      <div class="grid grid-cols-2 gap-4 sm:grid-cols-4">
        {#each stats as stat}
          <div class="rounded-lg bg-neutral-50 p-3">
            <p class="text-xs text-neutral-500">{stat.label}</p>
            <p class="mt-1 text-lg font-bold text-neutral-900">{stat.value}</p>
          </div>
        {/each}
      </div>
    </div>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 030 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-029" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-031" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-030 */
  .page-page-030 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-030:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-030__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-030__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-030__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-030__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-030__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-030__action {
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
  .page-page-030__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-030__action:active {
    transform: scale(0.98);
  }
  .page-page-030__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-030__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-030__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-030__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-030__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-030__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
