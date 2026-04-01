<script lang="ts">
  import { Collapsible } from 'bits-ui';
  const sections = [
    { id: 'team', title: 'Team Members', members: ['@alice', '@bob', '@carol', '@dave'] },
    { id: 'integrations', title: 'Connected Apps', members: ['Slack', 'GitHub', 'Jira'] },
  ];
</script>

<svelte:head>
  <title>Page 37 — Expandable Sections</title>
  <meta name="description" content="Route 037 in the build-timeout reproduction. Uses bits-ui Collapsible with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-amber-100 px-2.5 py-0.5 text-xs font-semibold text-amber-700">
          Collapsible
        </span>
        <span class="text-xs text-neutral-400">Route 037</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Expandable Sections</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #37 — testing SvelteKit build performance with bits-ui
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
      <span>Page 037 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-036" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-038" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-037 */
  .page-page-037 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-037:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-037__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-037__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-037__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-037__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-037__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-037__action {
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
  .page-page-037__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-037__action:active {
    transform: scale(0.98);
  }
  .page-page-037__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-037__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-037__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-037__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-037__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-037__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
