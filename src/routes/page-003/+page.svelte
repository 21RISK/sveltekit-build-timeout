<script lang="ts">
  import { Checkbox } from 'bits-ui';
  let settings = $state([
    { id: 'emails', label: 'Email notifications', description: 'Receive updates via email', checked: true },
    { id: 'sms', label: 'SMS alerts', description: 'Get urgent alerts via SMS', checked: false },
    { id: 'push', label: 'Push notifications', description: 'Browser push notifications', checked: true },
    { id: 'weekly', label: 'Weekly digest', description: 'Summary of weekly activity', checked: false },
    { id: 'marketing', label: 'Marketing emails', description: 'Product news and offers', checked: false },
  ]);
</script>

<svelte:head>
  <title>Page 3 — Settings Checkboxes</title>
  <meta name="description" content="Route 003 in the build-timeout reproduction. Uses bits-ui Checkbox with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-blue-100 px-2.5 py-0.5 text-xs font-semibold text-blue-700">
          Checkbox
        </span>
        <span class="text-xs text-neutral-400">Route 003</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Settings Checkboxes</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #3 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Checkbox</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="divide-y divide-neutral-100 rounded-2xl border border-neutral-200 bg-white shadow">
    {#each settings as setting}
      <label class="flex cursor-pointer items-start gap-4 px-6 py-4 hover:bg-neutral-50 transition-colors">
        <Checkbox.Root
          bind:checked={setting.checked}
          class="mt-0.5 flex h-5 w-5 shrink-0 items-center justify-center rounded border-2 border-neutral-300 bg-white transition-colors data-[state=checked]:border-blue-600 data-[state=checked]:bg-blue-600"
        >
          {#snippet children({ checked })}
            {#if checked}<svg class="h-3 w-3 text-white" viewBox="0 0 12 12" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M2 6l3 3 5-5"/></svg>{/if}
          {/snippet}
        </Checkbox.Root>
        <div class="min-w-0">
          <p class="text-sm font-medium text-neutral-900">{setting.label}</p>
          <p class="text-xs text-neutral-500 mt-0.5">{setting.description}</p>
        </div>
      </label>
    {/each}
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 003 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-002" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-004" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
