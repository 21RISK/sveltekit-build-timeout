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
  <title>Page 26 — Content Tabs</title>
  <meta name="description" content="Route 026 in the build-timeout reproduction. Uses bits-ui Tabs with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-emerald-100 px-2.5 py-0.5 text-xs font-semibold text-emerald-700">
          Tabs
        </span>
        <span class="text-xs text-neutral-400">Route 026</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Content Tabs</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #26 — testing SvelteKit build performance with bits-ui
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
      <span>Page 026 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-025" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-027" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
