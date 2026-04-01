<script lang="ts">
  import { Accordion, Progress } from 'bits-ui';
  const items = [
    { value: 'a', title: 'Section Alpha', content: 'Details for Alpha section with metrics.' },
    { value: 'b', title: 'Section Beta', content: 'Details for Beta section with analytics.' },
    { value: 'c', title: 'Section Gamma', content: 'Details for Gamma section with reporting.' },
  ];
  const bars = [
    { label: 'Performance', value: 78, color: 'bg-blue-600' },
    { label: 'Reliability', value: 93, color: 'bg-emerald-600' },
    { label: 'Efficiency', value: 61, color: 'bg-violet-600' },
  ];
</script>

<div class="flex flex-col gap-3 rounded-2xl border border-neutral-100 bg-white p-5 shadow-sm transition-shadow hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-sm font-semibold text-neutral-900">Component 266</h3>
    <span class="rounded-full bg-cyan-100 px-2 py-0.5 text-xs font-medium text-cyan-700">Accordion, Progress</span>
  </div>
  <p class="text-xs text-neutral-500">Component #266 — bits-ui Accordion, Progress with Tailwind CSS v4.</p>
  <Accordion.Root class="w-full rounded-xl border border-neutral-200 bg-white shadow-sm divide-y divide-neutral-100">
    {#each items as item}
      <Accordion.Item value={item.value}>
        <Accordion.Header>
          <Accordion.Trigger class="flex w-full items-center justify-between px-4 py-3 text-sm font-medium text-neutral-900 hover:bg-neutral-50 transition-colors">
            {item.title}
            <svg class="h-3.5 w-3.5 text-neutral-400" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 6l4 4 4-4"/></svg>
          </Accordion.Trigger>
        </Accordion.Header>
        <Accordion.Content class="px-4 pb-3 text-xs text-neutral-600">{item.content}</Accordion.Content>
      </Accordion.Item>
    {/each}
  </Accordion.Root>
  <div class="mt-3 space-y-2">
    {#each bars as bar}
      <div>
        <div class="mb-1 flex justify-between text-xs"><span class="text-neutral-700">{bar.label}</span><span class="tabular-nums text-neutral-400">{bar.value}%</span></div>
        <Progress.Root value={bar.value} max={100} class="h-1.5 w-full overflow-hidden rounded-full bg-neutral-100">
          <div class="h-full rounded-full {bar.color}" style="width: {bar.value}%"></div>
        </Progress.Root>
      </div>
    {/each}
  </div>
  <div class="mt-1 flex items-center gap-1.5 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-cyan-400"></span>
    <span>ID: 266</span>
  </div>
</div>

<style>
  /* Component: component266 */
  .page-component266 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component266:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component266__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component266__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component266__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component266__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component266__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component266__action {
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
  .page-component266__action:hover {
    background-color: #1d4ed8;
  }
  .page-component266__action:active {
    transform: scale(0.98);
  }
  .page-component266__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component266__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component266__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component266__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component266__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component266__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
