<script lang="ts">
  import { Accordion } from 'bits-ui';
  const items = [
    { value: 'overview', title: 'Overview', content: 'High-level summary of this page.' },
    { value: 'details', title: 'Details', content: 'In-depth information for power users.' },
    { value: 'actions', title: 'Actions', content: 'Available actions and operations.' },
    { value: 'history', title: 'History', content: 'Audit log and change history.' },
  ];
</script>

<svelte:head>
  <title>Page 41 — Accordion Dashboard</title>
  <meta name="description" content="Route 041 in the build-timeout reproduction. Uses bits-ui Accordion with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-rose-100 px-2.5 py-0.5 text-xs font-semibold text-rose-700">
          Accordion
        </span>
        <span class="text-xs text-neutral-400">Route 041</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Accordion Dashboard</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #41 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Accordion</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <Accordion.Root class="w-full divide-y divide-neutral-100 rounded-2xl border border-neutral-200 bg-white shadow">
    {#each items as item}
      <Accordion.Item value={item.value}>
        <Accordion.Header>
          <Accordion.Trigger class="flex w-full items-center justify-between px-6 py-4 text-left text-sm font-semibold text-neutral-900 hover:bg-neutral-50 transition-colors">
            <span>{item.title}</span>
            <svg class="h-4 w-4 text-neutral-400 transition-transform data-[state=open]:rotate-180" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 6l4 4 4-4"/></svg>
          </Accordion.Trigger>
        </Accordion.Header>
        <Accordion.Content class="px-6 pb-4 pt-0 text-sm text-neutral-600 leading-relaxed">
          {item.content}
        </Accordion.Content>
      </Accordion.Item>
    {/each}
  </Accordion.Root>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 041 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-040" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-042" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-041 */
  .page-page-041 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-041:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-041__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-041__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-041__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-041__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-041__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-041__action {
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
  .page-page-041__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-041__action:active {
    transform: scale(0.98);
  }
  .page-page-041__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-041__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-041__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-041__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-041__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-041__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
