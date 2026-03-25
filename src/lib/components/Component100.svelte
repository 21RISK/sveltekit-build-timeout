<script lang="ts">
  import { Slider } from 'bits-ui';

  let sliders = [
    { label: 'Volume', value: 50, max: 100, step: 1 },
    { label: 'Brightness', value: 75, max: 100, step: 5 },
    { label: 'Speed', value: 30, max: 200, step: 10 },
  ];
</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 100</h3>
    <span class="rounded-full bg-orange-100 px-2.5 py-0.5 text-xs font-medium text-orange-700">
      Slider
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #100 demonstrating the Slider primitive from bits-ui with Tailwind CSS.
  </p>
  <div class="flex w-full flex-col gap-6">
  {#each sliders as slider}
    <div class="space-y-2">
      <div class="flex justify-between">
        <label class="text-sm font-medium text-neutral-700">{slider.label}</label>
        <span class="text-sm text-neutral-500">{slider.value}</span>
      </div>
      <Slider.Root
        value={[slider.value]}
        max={slider.max}
        step={slider.step}
        class="relative flex w-full touch-none select-none items-center py-1"
      >
        <div class="relative h-2 w-full grow overflow-hidden rounded-full bg-neutral-200">
          <Slider.Range class="absolute h-full bg-blue-600" />
        </div>
        <Slider.Thumb class="block h-5 w-5 rounded-full border-2 border-blue-600 bg-white shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500" />
      </Slider.Root>
    </div>
  {/each}
</div>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-orange-400"></span>
    <span>ID: 100</span>
  </div>
</div>
