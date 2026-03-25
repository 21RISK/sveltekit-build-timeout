<script lang="ts">
  import { Collapsible, Button, Separator } from 'bits-ui';
  const groups = [
    { id: 'g1', title: 'General', items: ['Overview', 'Quickstart', 'Examples', 'FAQ'] },
    { id: 'g2', title: 'Advanced', items: ['Configuration', 'Plugins', 'Theming', 'CLI'] },
    { id: 'g3', title: 'API', items: ['REST', 'GraphQL', 'Webhooks', 'SDKs'] },
  ];
</script>

<div class="flex flex-col gap-3 rounded-2xl border border-neutral-100 bg-white p-5 shadow-sm transition-shadow hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-sm font-semibold text-neutral-900">Component 290</h3>
    <span class="rounded-full bg-pink-100 px-2 py-0.5 text-xs font-medium text-pink-700">Collapsible, Button, Separator</span>
  </div>
  <p class="text-xs text-neutral-500">Component #290 — bits-ui Collapsible, Button, Separator with Tailwind CSS v4.</p>
  <div class="space-y-3">
    {#each groups as group}
      <Collapsible.Root class="rounded-xl border border-neutral-200 bg-white shadow-sm">
        <div class="flex items-center justify-between px-4 py-3">
          <span class="text-xs font-semibold text-neutral-900">{group.title}</span>
          <Collapsible.Trigger class="flex h-7 w-7 items-center justify-center rounded-lg text-neutral-400 hover:bg-neutral-100 transition-colors">
            <svg class="h-3.5 w-3.5" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 6l4 4 4-4"/></svg>
          </Collapsible.Trigger>
        </div>
        <div class="border-t border-neutral-50 px-4 py-2 text-xs text-neutral-700">{group.items[0]}</div>
        <Collapsible.Content>
          {#each group.items.slice(1) as item}
            <div class="border-t border-neutral-50 px-4 py-2 text-xs text-neutral-700">{item}</div>
          {/each}
        </Collapsible.Content>
      </Collapsible.Root>
    {/each}
    <Separator.Root class="h-px w-full bg-neutral-200" />
    <div class="flex gap-2">
      <Button.Root class="flex-1 rounded-lg bg-blue-600 py-2 text-xs font-semibold text-white hover:bg-blue-700 transition-colors">View All</Button.Root>
      <Button.Root class="flex-1 rounded-lg border border-neutral-300 bg-white py-2 text-xs font-semibold text-neutral-700 hover:bg-neutral-50 transition-colors">Filter</Button.Root>
    </div>
  </div>
  <div class="mt-1 flex items-center gap-1.5 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-pink-400"></span>
    <span>ID: 290</span>
  </div>
</div>
