<script lang="ts">
  import { Button } from 'bits-ui';

</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 72</h3>
    <span class="rounded-full bg-green-100 px-2.5 py-0.5 text-xs font-medium text-green-700">
      Button
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #72 demonstrating the Button primitive from bits-ui with Tailwind CSS.
  </p>
  <div class="flex flex-wrap gap-3">
  <Button.Root class="rounded-lg bg-blue-600 px-4 py-2 text-sm font-medium text-white hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500">
    Primary Action
  </Button.Root>
  <Button.Root class="rounded-lg border border-neutral-300 bg-white px-4 py-2 text-sm font-medium text-neutral-700 hover:bg-neutral-50">
    Secondary
  </Button.Root>
  <Button.Root class="rounded-lg bg-red-600 px-4 py-2 text-sm font-medium text-white hover:bg-red-700">
    Danger
  </Button.Root>
</div>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-green-400"></span>
    <span>ID: 072</span>
  </div>
</div>
