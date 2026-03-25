<script lang="ts">
  import { Slider, Switch, Progress, Checkbox } from 'bits-ui';
  let brightness = $state(70);
  let volume = $state(45);
  let contrast = $state(85);
  let darkMode = $state(false);
  let autoSave = $state(true);
  let notifications = $state(true);
</script>

<svelte:head>
  <title>Page 364 — Controls Lab</title>
  <meta name="description" content="Route 364: Controls Lab. Uses bits-ui Slider, Switch, Progress, Checkbox with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-amber-100 px-2.5 py-0.5 text-xs font-semibold text-amber-700">Slider, Switch, Progress, Checkbox</span>
        <span class="text-xs text-neutral-400">Route 364</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Controls Lab</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #364 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Slider, Switch, Progress, Checkbox</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6 rounded-2xl border border-neutral-200 bg-white p-6 shadow">
    <div class="space-y-2">
      <div class="flex justify-between text-sm"><span class="font-medium text-neutral-800">Brightness</span><span class="tabular-nums text-neutral-500">{brightness}%</span></div>
      <Slider.Root bind:value={brightness} max={100} class="relative flex h-5 w-full items-center">
        <div class="relative h-1.5 w-full grow overflow-hidden rounded-full bg-neutral-200">
          <Slider.Range class="absolute h-full rounded-full bg-blue-600" />
        </div>
        <Slider.Thumb class="block h-4 w-4 rounded-full border border-blue-600/20 bg-white shadow focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-blue-600" />
      </Slider.Root>
    </div>
    <div class="space-y-2">
      <div class="flex justify-between text-sm"><span class="font-medium text-neutral-800">Volume</span><span class="tabular-nums text-neutral-500">{volume}%</span></div>
      <Slider.Root bind:value={volume} max={100} class="relative flex h-5 w-full items-center">
        <div class="relative h-1.5 w-full grow overflow-hidden rounded-full bg-neutral-200">
          <Slider.Range class="absolute h-full rounded-full bg-violet-600" />
        </div>
        <Slider.Thumb class="block h-4 w-4 rounded-full border border-violet-600/20 bg-white shadow focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-violet-600" />
      </Slider.Root>
    </div>
    <Progress.Root value={contrast} max={100} class="h-2 w-full overflow-hidden rounded-full bg-neutral-100">
      <div class="h-full rounded-full bg-emerald-600 transition-all" style="width: {contrast}%"></div>
    </Progress.Root>
    <div class="space-y-2 border-t border-neutral-100 pt-4">
      {#each [['darkMode', darkMode, 'Dark Mode'], ['autoSave', autoSave, 'Auto Save'], ['notifications', notifications, 'Notifications']] as [key, val, label]}
        <div class="flex items-center justify-between">
          <span class="text-sm text-neutral-700">{label}</span>
          <Switch.Root class="relative inline-flex h-6 w-11 shrink-0 rounded-full border-2 border-transparent bg-neutral-200 transition-colors data-[state=checked]:bg-blue-600 cursor-pointer">
            <Switch.Thumb class="block h-5 w-5 rounded-full bg-white shadow-lg transition-transform data-[state=checked]:translate-x-5 data-[state=unchecked]:translate-x-0" />
          </Switch.Root>
        </div>
      {/each}
    </div>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 364 of 500</span>
      <div class="flex items-center gap-4">
        <a href="/page-363" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-365" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
