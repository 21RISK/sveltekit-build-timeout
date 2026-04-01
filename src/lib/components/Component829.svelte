<script lang="ts">
  import { Slider, Progress, Button } from 'bits-ui';
  let brightness = $state(70);
  let volume = $state(50);
  const gauges = [
    { label: 'CPU', value: 64, color: 'bg-blue-500' },
    { label: 'Memory', value: 78, color: 'bg-violet-500' },
    { label: 'Network', value: 32, color: 'bg-emerald-500' },
  ];
</script>

<div class="flex flex-col gap-3 rounded-2xl border border-neutral-100 bg-white p-5 shadow-sm transition-shadow hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-sm font-semibold text-neutral-900">Component 829</h3>
    <span class="rounded-full bg-orange-100 px-2 py-0.5 text-xs font-medium text-orange-700">Slider, Progress, Button</span>
  </div>
  <p class="text-xs text-neutral-500">Component #829 — bits-ui Slider, Progress, Button with Tailwind CSS v4.</p>
  <div class="space-y-4 rounded-lg border border-neutral-200 bg-white p-4 shadow-sm">
    <div class="space-y-1">
      <div class="flex justify-between text-xs"><span class="font-medium text-neutral-700">Brightness</span><span class="tabular-nums text-neutral-400">{brightness}%</span></div>
      <Slider.Root bind:value={brightness} max={100} class="relative flex h-4 w-full items-center">
        <div class="relative h-1 w-full grow overflow-hidden rounded-full bg-neutral-200"><Slider.Range class="absolute h-full rounded-full bg-blue-600" /></div>
        <Slider.Thumb class="block h-3.5 w-3.5 rounded-full bg-white border border-neutral-300 shadow focus-visible:outline-none" />
      </Slider.Root>
    </div>
    <div class="space-y-1">
      <div class="flex justify-between text-xs"><span class="font-medium text-neutral-700">Volume</span><span class="tabular-nums text-neutral-400">{volume}%</span></div>
      <Slider.Root bind:value={volume} max={100} class="relative flex h-4 w-full items-center">
        <div class="relative h-1 w-full grow overflow-hidden rounded-full bg-neutral-200"><Slider.Range class="absolute h-full rounded-full bg-violet-600" /></div>
        <Slider.Thumb class="block h-3.5 w-3.5 rounded-full bg-white border border-neutral-300 shadow focus-visible:outline-none" />
      </Slider.Root>
    </div>
    <div class="space-y-1.5">
      {#each gauges as g}
        <div>
          <div class="mb-0.5 flex justify-between text-xs"><span class="text-neutral-600">{g.label}</span><span class="tabular-nums text-neutral-400">{g.value}%</span></div>
          <Progress.Root value={g.value} max={100} class="h-1.5 w-full overflow-hidden rounded-full bg-neutral-100">
            <div class="h-full rounded-full {g.color}" style="width: {g.value}%"></div>
          </Progress.Root>
        </div>
      {/each}
    </div>
    <Button.Root class="w-full rounded-lg bg-neutral-900 py-2 text-xs font-semibold text-white hover:bg-neutral-800 transition-colors">Apply Settings</Button.Root>
  </div>
  <div class="mt-1 flex items-center gap-1.5 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-orange-400"></span>
    <span>ID: 829</span>
  </div>
</div>

<style>
  /* Component: component829 */
  .page-component829 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component829:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component829__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component829__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component829__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component829__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component829__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component829__action {
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
  .page-component829__action:hover {
    background-color: #1d4ed8;
  }
  .page-component829__action:active {
    transform: scale(0.98);
  }
  .page-component829__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component829__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component829__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component829__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component829__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component829__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
