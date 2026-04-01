<script lang="ts">
  import { Slider, Progress, Separator } from 'bits-ui';
  let speed = $state(60);
  let memory = $state(45);
  let cpu = $state(82);
  const metrics = [
    { label: 'Uptime', value: 99.9, color: 'bg-emerald-500' },
    { label: 'Response', value: 72, color: 'bg-blue-500' },
    { label: 'Error Rate', value: 3, color: 'bg-rose-500' },
  ];
</script>

<div class="flex flex-col gap-3 rounded-2xl border border-neutral-100 bg-white p-5 shadow-sm transition-shadow hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-sm font-semibold text-neutral-900">Component 194</h3>
    <span class="rounded-full bg-amber-100 px-2 py-0.5 text-xs font-medium text-amber-700">Slider, Progress, Separator</span>
  </div>
  <p class="text-xs text-neutral-500">Component #194 — bits-ui Slider, Progress, Separator with Tailwind CSS v4.</p>
  <div class="rounded-xl border border-neutral-200 bg-white p-4 shadow-sm space-y-4">
    <div class="space-y-1">
      <div class="flex justify-between text-xs"><span class="font-medium text-neutral-700">Speed</span><span class="tabular-nums text-neutral-500">{speed}</span></div>
      <Slider.Root bind:value={speed} max={100} class="relative flex h-4 w-full items-center">
        <div class="relative h-1 w-full grow overflow-hidden rounded-full bg-neutral-200">
          <Slider.Range class="absolute h-full rounded-full bg-blue-600" />
        </div>
        <Slider.Thumb class="block h-3.5 w-3.5 rounded-full bg-white border border-blue-600/20 shadow focus-visible:outline-none" />
      </Slider.Root>
    </div>
    <div class="space-y-1">
      <div class="flex justify-between text-xs"><span class="font-medium text-neutral-700">Memory</span><span class="tabular-nums text-neutral-500">{memory}%</span></div>
      <Slider.Root bind:value={memory} max={100} class="relative flex h-4 w-full items-center">
        <div class="relative h-1 w-full grow overflow-hidden rounded-full bg-neutral-200">
          <Slider.Range class="absolute h-full rounded-full bg-violet-600" />
        </div>
        <Slider.Thumb class="block h-3.5 w-3.5 rounded-full bg-white border border-violet-600/20 shadow focus-visible:outline-none" />
      </Slider.Root>
    </div>
    <Separator.Root class="h-px w-full bg-neutral-100" />
    <div class="space-y-2">
      {#each metrics as m}
        <div>
          <div class="mb-0.5 flex justify-between text-xs"><span class="text-neutral-700">{m.label}</span><span class="tabular-nums text-neutral-400">{m.value}%</span></div>
          <Progress.Root value={m.value} max={100} class="h-1.5 w-full overflow-hidden rounded-full bg-neutral-100">
            <div class="h-full rounded-full {m.color}" style="width: {m.value}%"></div>
          </Progress.Root>
        </div>
      {/each}
    </div>
  </div>
  <div class="mt-1 flex items-center gap-1.5 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-amber-400"></span>
    <span>ID: 194</span>
  </div>
</div>

<style>
  /* Component: component194 */
  .page-component194 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component194:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component194__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component194__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component194__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component194__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component194__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component194__action {
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
  .page-component194__action:hover {
    background-color: #1d4ed8;
  }
  .page-component194__action:active {
    transform: scale(0.98);
  }
  .page-component194__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component194__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component194__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component194__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component194__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component194__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
