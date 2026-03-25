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
  <title>Page 71 — Accordion Dashboard</title>
  <meta name="description" content="Route 071 in the build-timeout reproduction. Uses bits-ui Accordion with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-violet-100 px-2.5 py-0.5 text-xs font-semibold text-violet-700">
          Accordion
        </span>
        <span class="text-xs text-neutral-400">Route 071</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Accordion Dashboard</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #71 — testing SvelteKit build performance with bits-ui
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
      <span>Page 071 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-070" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-072" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
