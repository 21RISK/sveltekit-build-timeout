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
    <h3 class="text-base font-semibold text-neutral-900">Component 90</h3>
    <span class="rounded-full bg-red-100 px-2.5 py-0.5 text-xs font-medium text-red-700">
      Slider
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #90 demonstrating the Slider primitive from bits-ui with Tailwind CSS.
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
    <span class="h-1.5 w-1.5 rounded-full bg-red-400"></span>
    <span>ID: 090</span>
  </div>
</div>

<style>
  /* Component: component090 */
  .page-component090 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component090:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component090__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component090__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component090__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component090__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component090__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component090__action {
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
  .page-component090__action:hover {
    background-color: #1d4ed8;
  }
  .page-component090__action:active {
    transform: scale(0.98);
  }
  .page-component090__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component090__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component090__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component090__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component090__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component090__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
