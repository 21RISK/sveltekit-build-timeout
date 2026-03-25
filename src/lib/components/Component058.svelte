<script lang="ts">
  import { Collapsible } from 'bits-ui';

</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 58</h3>
    <span class="rounded-full bg-blue-100 px-2.5 py-0.5 text-xs font-medium text-blue-700">
      Collapsible
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #58 demonstrating the Collapsible primitive from bits-ui with Tailwind CSS.
  </p>
  <Collapsible.Root class="w-full space-y-2">
  <div class="flex items-center justify-between space-x-4 px-4">
    <h4 class="text-sm font-semibold text-neutral-900">Team Members</h4>
    <Collapsible.Trigger class="rounded-md p-2 text-neutral-500 hover:bg-neutral-100 hover:text-neutral-900">
      ↕
    </Collapsible.Trigger>
  </div>
  <div class="rounded-md border border-neutral-200 px-4 py-3 text-sm text-neutral-700">@alice</div>
  <Collapsible.Content class="space-y-2">
    <div class="rounded-md border border-neutral-200 px-4 py-3 text-sm text-neutral-700">@bob</div>
    <div class="rounded-md border border-neutral-200 px-4 py-3 text-sm text-neutral-700">@charlie</div>
  </Collapsible.Content>
</Collapsible.Root>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-blue-400"></span>
    <span>ID: 058</span>
  </div>
</div>
