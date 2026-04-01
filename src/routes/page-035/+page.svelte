<script lang="ts">
  import { Switch } from 'bits-ui';
  let features = $state([
    { id: 'darkMode', label: 'Dark Mode', description: 'Use dark theme across the app', enabled: false },
    { id: 'betaFeatures', label: 'Beta Features', description: 'Try experimental features early', enabled: true },
    { id: 'analytics', label: 'Analytics', description: 'Share anonymous usage data', enabled: true },
    { id: 'autoSave', label: 'Auto Save', description: 'Automatically save your work', enabled: true },
    { id: 'twoFactor', label: 'Two-factor Auth', description: 'Extra security for your account', enabled: false },
  ]);
</script>

<svelte:head>
  <title>Page 35 — Feature Toggles</title>
  <meta name="description" content="Route 035 in the build-timeout reproduction. Uses bits-ui Switch with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-amber-100 px-2.5 py-0.5 text-xs font-semibold text-amber-700">
          Switch
        </span>
        <span class="text-xs text-neutral-400">Route 035</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Feature Toggles</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #35 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Switch</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="divide-y divide-neutral-100 rounded-2xl border border-neutral-200 bg-white shadow">
    {#each features as feature}
      <div class="flex items-center justify-between px-6 py-4">
        <div>
          <p class="text-sm font-semibold text-neutral-900">{feature.label}</p>
          <p class="text-xs text-neutral-500 mt-0.5">{feature.description}</p>
        </div>
        <Switch.Root
          bind:checked={feature.enabled}
          class="relative inline-flex h-6 w-11 shrink-0 cursor-pointer rounded-full border-2 border-transparent bg-neutral-200 transition-colors duration-200 ease-in-out focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600 data-[state=checked]:bg-blue-600"
        >
          <Switch.Thumb class="pointer-events-none block h-5 w-5 rounded-full bg-white shadow-lg ring-0 transition-transform duration-200 ease-in-out data-[state=checked]:translate-x-5 data-[state=unchecked]:translate-x-0" />
        </Switch.Root>
      </div>
    {/each}
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 035 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-034" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-036" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-035 */
  .page-page-035 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-035:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-035__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-035__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-035__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-035__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-035__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-035__action {
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
  .page-page-035__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-035__action:active {
    transform: scale(0.98);
  }
  .page-page-035__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-035__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-035__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-035__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-035__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-035__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
