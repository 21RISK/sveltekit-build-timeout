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
    <h3 class="text-sm font-semibold text-neutral-900">Component 710</h3>
    <span class="rounded-full bg-pink-100 px-2 py-0.5 text-xs font-medium text-pink-700">Accordion, Collapsible, Separator</span>
  </div>
  <p class="text-xs text-neutral-500">Component #710 — bits-ui Accordion, Collapsible, Separator with Tailwind CSS v4.</p>
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
    <span>ID: 710</span>
  </div>
</div>

<style>
  /* Component: component710 */
  .page-component710 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component710:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component710__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component710__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component710__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component710__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component710__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component710__action {
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
  .page-component710__action:hover {
    background-color: #1d4ed8;
  }
  .page-component710__action:active {
    transform: scale(0.98);
  }
  .page-component710__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component710__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component710__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component710__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component710__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component710__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
