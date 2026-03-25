<script lang="ts">
  import { Switch, Checkbox, Separator, Button } from 'bits-ui';
  let notifications = $state({ email: true, sms: false, push: true, weekly: false });
  let privacy = $state({ analytics: true, marketing: false, thirdParty: false });
</script>

<svelte:head>
  <title>Page 427 — Settings Panel</title>
  <meta name="description" content="Route 427: Settings Panel. Uses bits-ui Switch, Checkbox, Separator, Button with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-indigo-100 px-2.5 py-0.5 text-xs font-semibold text-indigo-700">Switch, Checkbox, Separator, Button</span>
        <span class="text-xs text-neutral-400">Route 427</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Settings Panel</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #427 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Switch, Checkbox, Separator, Button</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6">
    <div class="rounded-2xl border border-neutral-200 bg-white shadow divide-y divide-neutral-100">
      <div class="px-6 py-4">
        <h2 class="text-sm font-semibold text-neutral-900">Notifications</h2>
        <p class="text-xs text-neutral-500 mt-0.5">Control how you receive alerts</p>
      </div>
      {#each Object.entries(notifications) as [key, val]}
        <div class="flex items-center justify-between px-6 py-4">
          <span class="text-sm font-medium text-neutral-800 capitalize">{key}</span>
          <Switch.Root bind:checked={notifications[key]} class="relative inline-flex h-6 w-11 shrink-0 rounded-full border-2 border-transparent bg-neutral-200 transition-colors data-[state=checked]:bg-blue-600 cursor-pointer">
            <Switch.Thumb class="block h-5 w-5 rounded-full bg-white shadow-lg transition-transform data-[state=checked]:translate-x-5 data-[state=unchecked]:translate-x-0" />
          </Switch.Root>
        </div>
      {/each}
    </div>
    <Separator.Root class="h-px w-full bg-neutral-100" />
    <div class="rounded-2xl border border-neutral-200 bg-white shadow">
      <div class="border-b border-neutral-100 px-6 py-4">
        <h2 class="text-sm font-semibold text-neutral-900">Privacy</h2>
      </div>
      {#each Object.entries(privacy) as [key, val]}
        <label class="flex cursor-pointer items-center gap-4 px-6 py-4 hover:bg-neutral-50">
          <Checkbox.Root bind:checked={privacy[key]} class="flex h-5 w-5 items-center justify-center rounded border-2 border-neutral-300 bg-white data-[state=checked]:border-blue-600 data-[state=checked]:bg-blue-600">
            {#snippet children({ checked })}
              {#if checked}<svg class="h-3 w-3 text-white" viewBox="0 0 12 12" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M2 6l3 3 5-5"/></svg>{/if}
            {/snippet}
          </Checkbox.Root>
          <span class="text-sm text-neutral-800 capitalize">{key.replace(/([A-Z])/g, ' $1')}</span>
        </label>
      {/each}
    </div>
    <div class="flex gap-3">
      <Button.Root class="rounded-lg bg-blue-600 px-5 py-2.5 text-sm font-semibold text-white hover:bg-blue-700">Save</Button.Root>
      <Button.Root class="rounded-lg border border-neutral-300 bg-white px-5 py-2.5 text-sm font-semibold text-neutral-700 hover:bg-neutral-50">Reset</Button.Root>
    </div>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 427 of 500</span>
      <div class="flex items-center gap-4">
        <a href="/page-426" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-428" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
