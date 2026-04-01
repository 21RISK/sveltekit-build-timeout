<script lang="ts">
  import { Accordion, Button, Progress, Tabs } from 'bits-ui';
  const accordionItems = [
    { value: 'metrics', title: 'Key Metrics', content: 'Revenue up 12%, users up 8%, churn down 3%.' },
    { value: 'alerts', title: 'Active Alerts', content: '2 critical, 5 warning, 12 info.' },
    { value: 'tasks', title: 'Pending Tasks', content: '7 items require your attention today.' },
  ];
  const progress = [
    { label: 'Monthly Goal', value: 74, color: 'bg-blue-600' },
    { label: 'Q4 Quota', value: 52, color: 'bg-violet-600' },
    { label: 'User Signups', value: 89, color: 'bg-emerald-600' },
  ];
  const tabs = [
    { value: 'today', label: 'Today' },
    { value: 'week', label: 'This Week' },
    { value: 'month', label: 'Month' },
  ];
</script>

<svelte:head>
  <title>Page 396 — Dashboard Hub</title>
  <meta name="description" content="Route 396: Dashboard Hub. Uses bits-ui Accordion, Button, Progress, Tabs with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-cyan-100 px-2.5 py-0.5 text-xs font-semibold text-cyan-700">Accordion, Button, Progress, Tabs</span>
        <span class="text-xs text-neutral-400">Route 396</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Dashboard Hub</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #396 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Accordion, Button, Progress, Tabs</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6">
    <Tabs.Root value="today" class="rounded-2xl border border-neutral-200 bg-white shadow">
      <Tabs.List class="flex gap-1 border-b border-neutral-200 px-4 pt-3">
        {#each tabs as t}
          <Tabs.Trigger value={t.value} class="rounded-t-lg px-4 py-2 text-sm font-medium text-neutral-600 data-[state=active]:text-blue-600 data-[state=active]:shadow-[inset_0_-2px_0_#2563eb]">
            {t.label}
          </Tabs.Trigger>
        {/each}
      </Tabs.List>
      {#each tabs as t}
        <Tabs.Content value={t.value} class="p-6 text-sm text-neutral-600">
          <p>Showing data for: <strong>{t.label}</strong></p>
        </Tabs.Content>
      {/each}
    </Tabs.Root>
    <div class="space-y-4 rounded-2xl border border-neutral-200 bg-white p-6 shadow">
      {#each progress as p}
        <div>
          <div class="mb-1 flex justify-between text-sm">
            <span class="font-medium text-neutral-800">{p.label}</span>
            <span class="tabular-nums text-neutral-500">{p.value}%</span>
          </div>
          <Progress.Root value={p.value} max={100} class="h-2 w-full overflow-hidden rounded-full bg-neutral-100">
            <div class="h-full rounded-full {p.color} transition-all duration-500" style="width: {p.value}%"></div>
          </Progress.Root>
        </div>
      {/each}
    </div>
    <Accordion.Root class="rounded-2xl border border-neutral-200 bg-white shadow divide-y divide-neutral-100">
      {#each accordionItems as item}
        <Accordion.Item value={item.value}>
          <Accordion.Header>
            <Accordion.Trigger class="flex w-full items-center justify-between px-6 py-4 text-sm font-semibold text-neutral-900 hover:bg-neutral-50 transition-colors">
              {item.title}
              <svg class="h-4 w-4 text-neutral-400" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 6l4 4 4-4"/></svg>
            </Accordion.Trigger>
          </Accordion.Header>
          <Accordion.Content class="px-6 pb-4 text-sm text-neutral-600">{item.content}</Accordion.Content>
        </Accordion.Item>
      {/each}
    </Accordion.Root>
    <div class="flex gap-3">
      <Button.Root class="rounded-lg bg-blue-600 px-5 py-2.5 text-sm font-semibold text-white hover:bg-blue-700 transition-colors">Refresh</Button.Root>
      <Button.Root class="rounded-lg border border-neutral-300 bg-white px-5 py-2.5 text-sm font-semibold text-neutral-700 hover:bg-neutral-50 transition-colors">Export</Button.Root>
    </div>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 396 of 500</span>
      <div class="flex items-center gap-4">
        <a href="/page-395" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-397" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-396 */
  .page-page-396 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-396:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-396__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-396__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-396__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-396__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-396__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-396__action {
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
  .page-page-396__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-396__action:active {
    transform: scale(0.98);
  }
  .page-page-396__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-396__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-396__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-396__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-396__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-396__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
