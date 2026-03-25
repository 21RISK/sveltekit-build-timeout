<script lang="ts">
  import { Progress } from 'bits-ui';

  let progressItems = [
    { label: 'Design', value: 85 },
    { label: 'Development', value: 62 },
    { label: 'Testing', value: 40 },
    { label: 'Deployment', value: 20 },
  ];
</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 94</h3>
    <span class="rounded-full bg-orange-100 px-2.5 py-0.5 text-xs font-medium text-orange-700">
      Progress
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #94 demonstrating the Progress primitive from bits-ui with Tailwind CSS.
  </p>
  <div class="flex w-full flex-col gap-4">
  {#each progressItems as item}
    <div class="flex flex-col gap-1">
      <div class="flex justify-between text-sm">
        <span class="font-medium text-neutral-700">{item.label}</span>
        <span class="text-neutral-500">{item.value}%</span>
      </div>
      <Progress.Root
        value={item.value}
        max={100}
        class="relative h-2 w-full overflow-hidden rounded-full bg-neutral-200"
      >
        <div class="h-full bg-blue-600 transition-all duration-300" style="width: {item.value}%" />
      </Progress.Root>
    </div>
  {/each}
</div>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-orange-400"></span>
    <span>ID: 094</span>
  </div>
</div>
