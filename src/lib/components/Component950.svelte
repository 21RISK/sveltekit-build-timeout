<script lang="ts">
  import { Accordion, Collapsible, Separator } from 'bits-ui';
  const faq = [
    { q: 'What is this?', a: 'A SvelteKit build timeout reproduction.' },
    { q: 'Why does it hang?', a: 'vite-plugin-sveltekit-guard processes every route.' },
  ];
  const nav = [
    { id: 'n1', title: 'Docs', items: ['Getting Started', 'API', 'Examples'] },
    { id: 'n2', title: 'Community', items: ['Discord', 'GitHub', 'Forum'] },
  ];
</script>

<div class="flex flex-col gap-3 rounded-2xl border border-neutral-100 bg-white p-5 shadow-sm transition-shadow hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-sm font-semibold text-neutral-900">Component 950</h3>
    <span class="rounded-full bg-pink-100 px-2 py-0.5 text-xs font-medium text-pink-700">Accordion, Collapsible, Separator</span>
  </div>
  <p class="text-xs text-neutral-500">Component #950 — bits-ui Accordion, Collapsible, Separator with Tailwind CSS v4.</p>
  <div class="space-y-3">
    <div class="space-y-2">
      {#each nav as section}
        <Collapsible.Root class="rounded-lg border border-neutral-200 bg-white shadow-sm">
          <div class="flex items-center justify-between px-4 py-2.5">
            <span class="text-xs font-semibold text-neutral-900">{section.title}</span>
            <Collapsible.Trigger class="flex h-6 w-6 items-center justify-center rounded text-neutral-400 hover:bg-neutral-100">
              <svg class="h-3 w-3" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 6l4 4 4-4"/></svg>
            </Collapsible.Trigger>
          </div>
          <div class="border-t border-neutral-50 px-4 py-1.5 text-xs text-neutral-600">{section.items[0]}</div>
          <Collapsible.Content>
            {#each section.items.slice(1) as item}
              <div class="border-t border-neutral-50 px-4 py-1.5 text-xs text-neutral-600">{item}</div>
            {/each}
          </Collapsible.Content>
        </Collapsible.Root>
      {/each}
    </div>
    <Separator.Root class="h-px w-full bg-neutral-200" />
    <Accordion.Root class="rounded-lg border border-neutral-200 bg-white shadow-sm divide-y divide-neutral-100">
      {#each faq as item}
        <Accordion.Item value={item.q}>
          <Accordion.Header>
            <Accordion.Trigger class="flex w-full items-center justify-between px-4 py-2.5 text-xs font-semibold text-neutral-900 hover:bg-neutral-50">{item.q}</Accordion.Trigger>
          </Accordion.Header>
          <Accordion.Content class="px-4 pb-2.5 text-xs text-neutral-600">{item.a}</Accordion.Content>
        </Accordion.Item>
      {/each}
    </Accordion.Root>
  </div>
  <div class="mt-1 flex items-center gap-1.5 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-pink-400"></span>
    <span>ID: 950</span>
  </div>
</div>
