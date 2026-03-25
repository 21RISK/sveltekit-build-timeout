<script lang="ts">
  import { Avatar, Collapsible, Separator } from 'bits-ui';
  const people = [
    { name: 'Alex', role: 'Admin', initials: 'AX', color: 'bg-blue-200 text-blue-700' },
    { name: 'Sam', role: 'Editor', initials: 'SM', color: 'bg-violet-200 text-violet-700' },
    { name: 'Kim', role: 'Viewer', initials: 'KM', color: 'bg-emerald-200 text-emerald-700' },
  ];
  const sections = [
    { id: 's1', title: 'Projects', items: ['Alpha', 'Beta', 'Gamma'] },
    { id: 's2', title: 'Reports', items: ['Q1', 'Q2', 'Q3'] },
  ];
</script>

<div class="flex flex-col gap-3 rounded-2xl border border-neutral-100 bg-white p-5 shadow-sm transition-shadow hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-sm font-semibold text-neutral-900">Component 728</h3>
    <span class="rounded-full bg-teal-100 px-2 py-0.5 text-xs font-medium text-teal-700">Avatar, Collapsible, Separator</span>
  </div>
  <p class="text-xs text-neutral-500">Component #728 — bits-ui Avatar, Collapsible, Separator with Tailwind CSS v4.</p>
  <div class="space-y-3">
    <div class="flex -space-x-2">
      {#each people as p}
        <Avatar.Root class="h-8 w-8 overflow-hidden rounded-full border-2 border-white">
          <Avatar.Image src="" alt={p.name} />
          <Avatar.Fallback class="flex h-full w-full items-center justify-center text-xs font-semibold {p.color}">{p.initials}</Avatar.Fallback>
        </Avatar.Root>
      {/each}
      <span class="flex h-8 w-8 items-center justify-center rounded-full border-2 border-white bg-neutral-100 text-xs font-semibold text-neutral-600">+3</span>
    </div>
    <Separator.Root class="h-px w-full bg-neutral-100" />
    <div class="space-y-2">
      {#each sections as section}
        <Collapsible.Root class="rounded-lg border border-neutral-200 bg-white">
          <div class="flex items-center justify-between px-3 py-2.5">
            <span class="text-xs font-semibold text-neutral-900">{section.title}</span>
            <Collapsible.Trigger class="flex h-6 w-6 items-center justify-center rounded text-neutral-400 hover:bg-neutral-100">
              <svg class="h-3 w-3" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 6l4 4 4-4"/></svg>
            </Collapsible.Trigger>
          </div>
          <div class="border-t border-neutral-50 px-3 py-1.5 text-xs text-neutral-600">{section.items[0]}</div>
          <Collapsible.Content>
            {#each section.items.slice(1) as item}
              <div class="border-t border-neutral-50 px-3 py-1.5 text-xs text-neutral-600">{item}</div>
            {/each}
          </Collapsible.Content>
        </Collapsible.Root>
      {/each}
    </div>
  </div>
  <div class="mt-1 flex items-center gap-1.5 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-teal-400"></span>
    <span>ID: 728</span>
  </div>
</div>
