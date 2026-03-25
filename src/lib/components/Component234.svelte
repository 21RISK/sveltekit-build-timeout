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
    <h3 class="text-sm font-semibold text-neutral-900">Component 234</h3>
    <span class="rounded-full bg-amber-100 px-2 py-0.5 text-xs font-medium text-amber-700">Slider, Progress, Separator</span>
  </div>
  <p class="text-xs text-neutral-500">Component #234 — bits-ui Slider, Progress, Separator with Tailwind CSS v4.</p>
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
    <span>ID: 234</span>
  </div>
</div>
