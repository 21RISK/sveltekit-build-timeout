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
    <h3 class="text-sm font-semibold text-neutral-900">Component 285</h3>
    <span class="rounded-full bg-rose-100 px-2 py-0.5 text-xs font-medium text-rose-700">Collapsible, Button, Separator</span>
  </div>
  <p class="text-xs text-neutral-500">Component #285 — bits-ui Collapsible, Button, Separator with Tailwind CSS v4.</p>
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
    <span class="h-1.5 w-1.5 rounded-full bg-rose-400"></span>
    <span>ID: 285</span>
  </div>
</div>

<style>
  /* Component: component285 */
  .page-component285 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component285:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component285__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component285__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component285__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component285__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component285__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component285__action {
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
  .page-component285__action:hover {
    background-color: #1d4ed8;
  }
  .page-component285__action:active {
    transform: scale(0.98);
  }
  .page-component285__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component285__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component285__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component285__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component285__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component285__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
