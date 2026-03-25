<script lang="ts">
  import { Collapsible } from 'bits-ui';
  const sections = [
    { id: 'team', title: 'Team Members', members: ['@alice', '@bob', '@carol', '@dave'] },
    { id: 'integrations', title: 'Connected Apps', members: ['Slack', 'GitHub', 'Jira'] },
  ];
</script>

<svelte:head>
  <title>Page 7 — Expandable Sections</title>
  <meta name="description" content="Route 007 in the build-timeout reproduction. Uses bits-ui Collapsible with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-blue-100 px-2.5 py-0.5 text-xs font-semibold text-blue-700">
          Collapsible
        </span>
        <span class="text-xs text-neutral-400">Route 007</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Expandable Sections</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #7 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Collapsible</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-3">
    {#each sections as section}
      <Collapsible.Root class="rounded-2xl border border-neutral-200 bg-white shadow">
        <div class="flex items-center justify-between px-6 py-4">
          <h3 class="text-sm font-semibold text-neutral-900">{section.title}</h3>
          <Collapsible.Trigger class="flex h-8 w-8 items-center justify-center rounded-lg text-neutral-400 hover:bg-neutral-100 hover:text-neutral-600 transition-colors">
            <svg class="h-4 w-4" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 6l4 4 4-4"/></svg>
          </Collapsible.Trigger>
        </div>
        <div class="border-t border-neutral-100 px-6 py-3 text-sm text-neutral-700">
          {section.members[0]}
        </div>
        <Collapsible.Content class="divide-y divide-neutral-50 border-t border-neutral-100">
          {#each section.members.slice(1) as member}
            <div class="px-6 py-3 text-sm text-neutral-700">{member}</div>
          {/each}
        </Collapsible.Content>
      </Collapsible.Root>
    {/each}
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 007 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-006" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-008" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
