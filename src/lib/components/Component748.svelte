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
    <h3 class="text-sm font-semibold text-neutral-900">Component 748</h3>
    <span class="rounded-full bg-teal-100 px-2 py-0.5 text-xs font-medium text-teal-700">Avatar, Collapsible, Separator</span>
  </div>
  <p class="text-xs text-neutral-500">Component #748 — bits-ui Avatar, Collapsible, Separator with Tailwind CSS v4.</p>
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
    <span>ID: 748</span>
  </div>
</div>

<style>
  /* Component: component748 */
  .page-component748 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component748:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component748__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component748__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component748__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component748__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component748__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component748__action {
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
  .page-component748__action:hover {
    background-color: #1d4ed8;
  }
  .page-component748__action:active {
    transform: scale(0.98);
  }
  .page-component748__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component748__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component748__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component748__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component748__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component748__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
