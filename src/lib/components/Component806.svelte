<script lang="ts">
  import { Accordion, Progress, Tabs } from 'bits-ui';
  const items = [
    { value: 'a', title: 'Section Alpha', content: 'Details for Alpha section.' },
    { value: 'b', title: 'Section Beta', content: 'Details for Beta section.' },
    { value: 'c', title: 'Section Gamma', content: 'Details for Gamma.' },
  ];
  const bars = [
    { label: 'Performance', value: 78, color: 'bg-blue-600' },
    { label: 'Reliability', value: 93, color: 'bg-emerald-600' },
    { label: 'Efficiency', value: 61, color: 'bg-violet-600' },
  ];
  const tabs = [{ value: 'stats', label: 'Stats' }, { value: 'logs', label: 'Logs' }];
</script>

<div class="flex flex-col gap-3 rounded-2xl border border-neutral-100 bg-white p-5 shadow-sm transition-shadow hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-sm font-semibold text-neutral-900">Component 806</h3>
    <span class="rounded-full bg-cyan-100 px-2 py-0.5 text-xs font-medium text-cyan-700">Accordion, Progress, Tabs</span>
  </div>
  <p class="text-xs text-neutral-500">Component #806 — bits-ui Accordion, Progress, Tabs with Tailwind CSS v4.</p>
  <Tabs.Root value="stats" class="rounded-lg border border-neutral-200 bg-white shadow-sm">
    <Tabs.List class="flex border-b border-neutral-200 px-3 pt-2">
      {#each tabs as t}
        <Tabs.Trigger value={t.value} class="px-3 py-1.5 text-xs font-medium text-neutral-600 data-[state=active]:text-blue-600 data-[state=active]:shadow-[inset_0_-2px_0_#2563eb]">{t.label}</Tabs.Trigger>
      {/each}
    </Tabs.List>
    <Tabs.Content value="stats" class="space-y-2 p-4">
      {#each bars as bar}
        <div>
          <div class="mb-0.5 flex justify-between text-xs"><span class="text-neutral-700">{bar.label}</span><span class="tabular-nums text-neutral-400">{bar.value}%</span></div>
          <Progress.Root value={bar.value} max={100} class="h-1.5 w-full overflow-hidden rounded-full bg-neutral-100">
            <div class="h-full rounded-full {bar.color}" style="width: {bar.value}%"></div>
          </Progress.Root>
        </div>
      {/each}
    </Tabs.Content>
    <Tabs.Content value="logs" class="p-4">
      <Accordion.Root class="w-full divide-y divide-neutral-100 rounded-lg border border-neutral-100">
        {#each items as item}
          <Accordion.Item value={item.value}>
            <Accordion.Header>
              <Accordion.Trigger class="flex w-full items-center justify-between px-3 py-2 text-xs font-medium text-neutral-900 hover:bg-neutral-50">{item.title}</Accordion.Trigger>
            </Accordion.Header>
            <Accordion.Content class="px-3 pb-2 text-xs text-neutral-600">{item.content}</Accordion.Content>
          </Accordion.Item>
        {/each}
      </Accordion.Root>
    </Tabs.Content>
  </Tabs.Root>
  <div class="mt-1 flex items-center gap-1.5 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-cyan-400"></span>
    <span>ID: 806</span>
  </div>
</div>

<style>
  /* Component: component806 */
  .page-component806 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component806:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component806__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component806__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component806__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component806__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component806__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component806__action {
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
  .page-component806__action:hover {
    background-color: #1d4ed8;
  }
  .page-component806__action:active {
    transform: scale(0.98);
  }
  .page-component806__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component806__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component806__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component806__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component806__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component806__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
