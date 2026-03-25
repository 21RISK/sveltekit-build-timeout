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
    <h3 class="text-sm font-semibold text-neutral-900">Component 754</h3>
    <span class="rounded-full bg-amber-100 px-2 py-0.5 text-xs font-medium text-amber-700">Slider, Progress, Button</span>
  </div>
  <p class="text-xs text-neutral-500">Component #754 — bits-ui Slider, Progress, Button with Tailwind CSS v4.</p>
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
    <span class="h-1.5 w-1.5 rounded-full bg-amber-400"></span>
    <span>ID: 754</span>
  </div>
</div>
