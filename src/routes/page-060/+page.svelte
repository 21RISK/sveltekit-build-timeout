<script lang="ts">
  import { Separator } from 'bits-ui';
  const links = ['Documentation', 'API Reference', 'Changelog', 'Status'];
  const stats = [
    { label: 'Total Routes', value: '50+' },
    { label: 'Components', value: '100+' },
    { label: 'Build Time', value: '???' },
    { label: 'Status', value: 'Testing' },
  ];
</script>

<svelte:head>
  <title>Page 60 — Separator Layout</title>
  <meta name="description" content="Route 060 in the build-timeout reproduction. Uses bits-ui Separator with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-cyan-100 px-2.5 py-0.5 text-xs font-semibold text-cyan-700">
          Separator
        </span>
        <span class="text-xs text-neutral-400">Route 060</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Separator Layout</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #60 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Separator</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="rounded-2xl border border-neutral-200 bg-white p-6 shadow space-y-6">
    <div>
      <h3 class="text-sm font-semibold text-neutral-900">Quick Links</h3>
      <Separator.Root class="my-3 h-px w-full bg-neutral-100" />
      <nav class="flex flex-wrap gap-x-1 gap-y-0.5">
        {#each links as link, i}
          {#if i > 0}
            <Separator.Root orientation="vertical" class="mx-1 h-4 w-px self-center bg-neutral-200" />
          {/if}
          <a href="#" class="text-sm text-blue-600 hover:underline">{link}</a>
        {/each}
      </nav>
    </div>
    <Separator.Root class="h-px w-full bg-neutral-100" />
    <div>
      <h3 class="text-sm font-semibold text-neutral-900 mb-3">Build Stats</h3>
      <div class="grid grid-cols-2 gap-4 sm:grid-cols-4">
        {#each stats as stat}
          <div class="rounded-lg bg-neutral-50 p-3">
            <p class="text-xs text-neutral-500">{stat.label}</p>
            <p class="mt-1 text-lg font-bold text-neutral-900">{stat.value}</p>
          </div>
        {/each}
      </div>
    </div>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 060 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-059" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-061" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
