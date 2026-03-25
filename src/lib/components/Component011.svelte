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
    <h3 class="text-base font-semibold text-neutral-900">Component 11</h3>
    <span class="rounded-full bg-purple-100 px-2.5 py-0.5 text-xs font-medium text-purple-700">
      Accordion
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #11 demonstrating the Accordion primitive from bits-ui with Tailwind CSS.
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
    <span class="h-1.5 w-1.5 rounded-full bg-purple-400"></span>
    <span>ID: 011</span>
  </div>
</div>
