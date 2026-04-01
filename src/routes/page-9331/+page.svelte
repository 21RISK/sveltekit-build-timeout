<script lang="ts">
  import { Accordion, Button, Progress, Tabs, Separator } from 'bits-ui';
  const kpis = [
    { label: 'Revenue', value: 84200, trend: '+12%', color: 'text-emerald-600' },
    { label: 'Users', value: 14830, trend: '+8%', color: 'text-blue-600' },
    { label: 'Conversion', value: 3.2, trend: '+0.4%', color: 'text-violet-600' },
    { label: 'Churn', value: 2.1, trend: '-0.3%', color: 'text-rose-600' },
  ];
  const metrics = [
    { label: 'CPU Usage', value: 67, color: 'bg-blue-500' },
    { label: 'Memory', value: 82, color: 'bg-violet-500' },
    { label: 'Bandwidth', value: 45, color: 'bg-emerald-500' },
    { label: 'Storage', value: 73, color: 'bg-amber-500' },
  ];
  const faq = [
    { q: 'How is revenue calculated?', a: 'Sum of all paid subscriptions minus refunds for the period.' },
    { q: 'What counts as a conversion?', a: 'Any free user who upgrades to a paid plan.' },
  ];
  const tabs = [{ value: 'day', label: 'Day' }, { value: 'week', label: 'Week' }, { value: 'month', label: 'Month' }, { value: 'year', label: 'Year' }];
</script>

<svelte:head>
  <title>Page 9331 — Analytics Suite</title>
  <meta name="description" content="Route 9331: Analytics Suite. Uses bits-ui Accordion, Button, Progress, Tabs, Separator with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-blue-100 px-2.5 py-0.5 text-xs font-semibold text-blue-700">Accordion, Button, Progress, Tabs, Separator</span>
        <span class="text-xs text-neutral-400">Route 9331</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Analytics Suite</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #9331 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Accordion, Button, Progress, Tabs, Separator</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6">
    <div class="grid grid-cols-2 gap-3 sm:grid-cols-4">
      {#each kpis as kpi}
        <div class="rounded-xl border border-neutral-200 bg-white p-4 shadow-sm">
          <p class="text-xs text-neutral-500">{kpi.label}</p>
          <p class="mt-1 text-xl font-bold text-neutral-900">{kpi.value.toLocaleString()}</p>
          <p class="mt-0.5 text-xs font-medium {kpi.color}">{kpi.trend}</p>
        </div>
      {/each}
    </div>
    <Tabs.Root value="day" class="rounded-2xl border border-neutral-200 bg-white shadow">
      <Tabs.List class="flex gap-1 border-b border-neutral-200 px-4 pt-3">
        {#each tabs as t}
          <Tabs.Trigger value={t.value} class="rounded-t-lg px-3 py-2 text-xs font-medium text-neutral-600 data-[state=active]:text-blue-600 data-[state=active]:shadow-[inset_0_-2px_0_#2563eb] transition-colors">{t.label}</Tabs.Trigger>
        {/each}
      </Tabs.List>
      {#each tabs as t}
        <Tabs.Content value={t.value} class="p-5 text-sm text-neutral-600">Showing analytics for: <strong>{t.label}</strong></Tabs.Content>
      {/each}
    </Tabs.Root>
    <div class="space-y-3 rounded-2xl border border-neutral-200 bg-white p-5 shadow">
      {#each metrics as m}
        <div>
          <div class="mb-1 flex justify-between text-xs"><span class="font-medium text-neutral-700">{m.label}</span><span class="tabular-nums text-neutral-500">{m.value}%</span></div>
          <Progress.Root value={m.value} max={100} class="h-2 w-full overflow-hidden rounded-full bg-neutral-100">
            <div class="h-full rounded-full {m.color} transition-all" style="width: {m.value}%"></div>
          </Progress.Root>
        </div>
      {/each}
    </div>
    <Separator.Root class="h-px w-full bg-neutral-200" />
    <Accordion.Root class="rounded-2xl border border-neutral-200 bg-white shadow divide-y divide-neutral-100">
      {#each faq as item}
        <Accordion.Item value={item.q}>
          <Accordion.Header>
            <Accordion.Trigger class="flex w-full items-center justify-between px-6 py-4 text-sm font-semibold text-neutral-900 hover:bg-neutral-50">{item.q}</Accordion.Trigger>
          </Accordion.Header>
          <Accordion.Content class="px-6 pb-4 text-sm text-neutral-600">{item.a}</Accordion.Content>
        </Accordion.Item>
      {/each}
    </Accordion.Root>
    <div class="flex gap-3">
      <Button.Root class="rounded-lg bg-blue-600 px-5 py-2.5 text-sm font-semibold text-white hover:bg-blue-700 transition-colors">Download Report</Button.Root>
      <Button.Root class="rounded-lg border border-neutral-300 bg-white px-5 py-2.5 text-sm font-semibold text-neutral-700 hover:bg-neutral-50 transition-colors">Share</Button.Root>
    </div>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 9331 of 10000</span>
      <div class="flex items-center gap-4">
        <a href="/page-9330" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-9332" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-9331 */
  .page-page-9331 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-9331:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-9331__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-9331__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-9331__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-9331__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-9331__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-9331__action {
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
  .page-page-9331__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-9331__action:active {
    transform: scale(0.98);
  }
  .page-page-9331__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-9331__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-9331__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-9331__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-9331__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-9331__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
