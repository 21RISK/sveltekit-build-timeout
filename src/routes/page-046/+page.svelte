<script lang="ts">
  import { Tabs } from 'bits-ui';
  const tabs = [
    { value: 'overview', label: 'Overview', content: 'This tab shows the overview.' },
    { value: 'analytics', label: 'Analytics', content: 'This tab shows analytics data.' },
    { value: 'reports', label: 'Reports', content: 'This tab shows downloadable reports.' },
    { value: 'notifications', label: 'Notifications', content: 'This tab manages notification preferences.' },
  ];
</script>

<svelte:head>
  <title>Page 46 — Content Tabs</title>
  <meta name="description" content="Route 046 in the build-timeout reproduction. Uses bits-ui Tabs with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-rose-100 px-2.5 py-0.5 text-xs font-semibold text-rose-700">
          Tabs
        </span>
        <span class="text-xs text-neutral-400">Route 046</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Content Tabs</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #46 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Tabs</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="rounded-2xl border border-neutral-200 bg-white shadow">
    <Tabs.Root value="overview">
      <Tabs.List class="flex border-b border-neutral-200 px-2 pt-2 gap-1">
        {#each tabs as tab}
          <Tabs.Trigger
            value={tab.value}
            class="rounded-t-lg px-4 py-2.5 text-sm font-medium text-neutral-600 transition-colors hover:text-neutral-900 data-[state=active]:bg-neutral-50 data-[state=active]:text-blue-600 data-[state=active]:shadow-[inset_0_-2px_0_0_#2563eb]"
          >
            {tab.label}
          </Tabs.Trigger>
        {/each}
      </Tabs.List>
      {#each tabs as tab}
        <Tabs.Content value={tab.value} class="p-6 text-sm text-neutral-600">
          <p class="text-base font-semibold text-neutral-900 mb-2">{tab.label}</p>
          <p>{tab.content}</p>
        </Tabs.Content>
      {/each}
    </Tabs.Root>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 046 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-045" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-047" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-046 */
  .page-page-046 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-046:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-046__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-046__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-046__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-046__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-046__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-046__action {
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
  .page-page-046__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-046__action:active {
    transform: scale(0.98);
  }
  .page-page-046__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-046__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-046__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-046__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-046__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-046__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
