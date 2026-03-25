<script lang="ts">
  import { Switch, Checkbox, Slider, Button, Separator } from 'bits-ui';
  let featureFlags = $state({ darkMode: false, betaFeatures: true, autoSave: true, debugMode: false, telemetry: true, offline: false });
  let checks = $state({ gdpr: true, terms: true, cookies: false, marketing: false });
  let throttle = $state(80);
  let timeout = $state(30);
  let retries = $state(3);
</script>

<svelte:head>
  <title>Page 2757 — Config Center</title>
  <meta name="description" content="Route 2757: Config Center. Uses bits-ui Switch, Checkbox, Slider, Button, Separator with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-indigo-100 px-2.5 py-0.5 text-xs font-semibold text-indigo-700">Switch, Checkbox, Slider, Button, Separator</span>
        <span class="text-xs text-neutral-400">Route 2757</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Config Center</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #2757 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Switch, Checkbox, Slider, Button, Separator</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6">
    <div class="rounded-2xl border border-neutral-200 bg-white shadow divide-y divide-neutral-100">
      <div class="px-5 py-3"><p class="text-sm font-semibold text-neutral-900">Feature Flags</p></div>
      {#each Object.entries(featureFlags) as [key]}
        <div class="flex items-center justify-between px-5 py-3">
          <span class="text-sm text-neutral-800 capitalize">{key.replace(/([A-Z])/g, ' $1')}</span>
          <Switch.Root bind:checked={featureFlags[key]} class="relative inline-flex h-5 w-9 shrink-0 rounded-full border-2 border-transparent bg-neutral-200 transition-colors data-[state=checked]:bg-blue-600 cursor-pointer">
            <Switch.Thumb class="block h-4 w-4 rounded-full bg-white shadow transition-transform data-[state=checked]:translate-x-4 data-[state=unchecked]:translate-x-0" />
          </Switch.Root>
        </div>
      {/each}
    </div>
    <Separator.Root class="h-px w-full bg-neutral-100" />
    <div class="space-y-4 rounded-2xl border border-neutral-200 bg-white p-5 shadow">
      <p class="text-sm font-semibold text-neutral-900">Performance</p>
      <div class="space-y-1">
        <div class="flex justify-between text-xs"><span class="font-medium text-neutral-700">Throttle</span><span class="tabular-nums text-neutral-500">{throttle}</span></div>
        <Slider.Root bind:value={throttle} max={100} class="relative flex h-4 w-full items-center">
          <div class="relative h-1 w-full grow overflow-hidden rounded-full bg-neutral-200"><Slider.Range class="absolute h-full rounded-full bg-blue-600" /></div>
          <Slider.Thumb class="block h-3.5 w-3.5 rounded-full bg-white border border-neutral-300 shadow focus-visible:outline-none" />
        </Slider.Root>
      </div>
      <div class="space-y-1">
        <div class="flex justify-between text-xs"><span class="font-medium text-neutral-700">Timeout (s)</span><span class="tabular-nums text-neutral-500">{timeout}</span></div>
        <Slider.Root bind:value={timeout} max={120} class="relative flex h-4 w-full items-center">
          <div class="relative h-1 w-full grow overflow-hidden rounded-full bg-neutral-200"><Slider.Range class="absolute h-full rounded-full bg-violet-600" /></div>
          <Slider.Thumb class="block h-3.5 w-3.5 rounded-full bg-white border border-neutral-300 shadow focus-visible:outline-none" />
        </Slider.Root>
      </div>
    </div>
    <div class="space-y-2">
      {#each Object.entries(checks) as [key]}
        <label class="flex cursor-pointer items-center gap-3">
          <Checkbox.Root bind:checked={checks[key]} class="flex h-4 w-4 items-center justify-center rounded border-2 border-neutral-300 bg-white data-[state=checked]:border-blue-600 data-[state=checked]:bg-blue-600 shrink-0">
            {#snippet children({ checked })}
              {#if checked}<svg class="h-2.5 w-2.5 text-white" viewBox="0 0 12 12" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M2 6l3 3 5-5"/></svg>{/if}
            {/snippet}
          </Checkbox.Root>
          <span class="text-xs text-neutral-700 uppercase">{key}</span>
        </label>
      {/each}
    </div>
    <div class="flex gap-3">
      <Button.Root class="flex-1 rounded-lg bg-blue-600 py-2.5 text-sm font-semibold text-white hover:bg-blue-700 transition-colors">Save Config</Button.Root>
      <Button.Root class="rounded-lg border border-neutral-300 bg-white px-4 py-2.5 text-sm font-semibold text-neutral-700 hover:bg-neutral-50 transition-colors">Reset</Button.Root>
    </div>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 2757 of 10000</span>
      <div class="flex items-center gap-4">
        <a href="/page-2756" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-2758" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
