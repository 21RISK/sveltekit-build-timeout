<script lang="ts">
  import { Accordion } from 'bits-ui';

  let items = [
    { value: 'item-1', title: 'What is this?', content: 'An accordion component.' },
    { value: 'item-2', title: 'How does it work?', content: 'It uses bits-ui.' },
    { value: 'item-3', title: 'Why use it?', content: 'For accessible, beautiful UIs.' },
  ];
</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 91</h3>
    <span class="rounded-full bg-orange-100 px-2.5 py-0.5 text-xs font-medium text-orange-700">
      Accordion
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #91 demonstrating the Accordion primitive from bits-ui with Tailwind CSS.
  </p>
  <Accordion.Root class="w-full rounded-xl border border-neutral-200 bg-white shadow-sm">
  {#each items as item}
    <Accordion.Item value={item.value} class="border-b border-neutral-200 last:border-0">
      <Accordion.Header>
        <Accordion.Trigger class="flex w-full items-center justify-between px-4 py-3 text-left text-sm font-medium text-neutral-900 hover:bg-neutral-50">
          {item.title}
        </Accordion.Trigger>
      </Accordion.Header>
      <Accordion.Content class="px-4 py-3 text-sm text-neutral-600">
        {item.content}
      </Accordion.Content>
    </Accordion.Item>
  {/each}
</Accordion.Root>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-orange-400"></span>
    <span>ID: 091</span>
  </div>
</div>

<style>
  /* Component: component091 */
  .page-component091 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component091:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component091__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component091__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component091__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component091__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component091__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component091__action {
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
  .page-component091__action:hover {
    background-color: #1d4ed8;
  }
  .page-component091__action:active {
    transform: scale(0.98);
  }
  .page-component091__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component091__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component091__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component091__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component091__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component091__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
