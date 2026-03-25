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
    <h3 class="text-sm font-semibold text-neutral-900">Component 291</h3>
    <span class="rounded-full bg-blue-100 px-2 py-0.5 text-xs font-medium text-blue-700">Accordion, Progress</span>
  </div>
  <p class="text-xs text-neutral-500">Component #291 — bits-ui Accordion, Progress with Tailwind CSS v4.</p>
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
    <span class="h-1.5 w-1.5 rounded-full bg-blue-400"></span>
    <span>ID: 291</span>
  </div>
</div>
