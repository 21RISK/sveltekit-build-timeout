<script lang="ts">
  import { Switch, Checkbox, Separator, Button } from 'bits-ui';
  let notifications = $state({ email: true, sms: false, push: true, weekly: false });
  let privacy = $state({ analytics: true, marketing: false, thirdParty: false });
</script>

<svelte:head>
  <title>Page 287 — Settings Panel</title>
  <meta name="description" content="Route 287: Settings Panel. Uses bits-ui Switch, Checkbox, Separator, Button with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-indigo-100 px-2.5 py-0.5 text-xs font-semibold text-indigo-700">Switch, Checkbox, Separator, Button</span>
        <span class="text-xs text-neutral-400">Route 287</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Settings Panel</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #287 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Switch, Checkbox, Separator, Button</code>
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
      <span>Page 287 of 500</span>
      <div class="flex items-center gap-4">
        <a href="/page-286" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-288" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-287 */
  .page-page-287 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-287:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-287__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-287__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-287__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-287__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-287__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-287__action {
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
  .page-page-287__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-287__action:active {
    transform: scale(0.98);
  }
  .page-page-287__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-287__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-287__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-287__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-287__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-287__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
