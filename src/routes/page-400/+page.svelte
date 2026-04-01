<script lang="ts">
  import { Collapsible, Accordion, Separator, Avatar } from 'bits-ui';
  const sections = [
    { id: 'docs', title: 'Documentation', items: ['Getting Started', 'API Reference', 'Changelog', 'Migration Guide'] },
    { id: 'team', title: 'Team', items: ['Engineering', 'Design', 'Product', 'Marketing'] },
    { id: 'tools', title: 'Tools', items: ['Figma', 'GitHub', 'Linear', 'Notion'] },
  ];
  const faq = [
    { q: 'How does this work?', a: 'It uses SvelteKit with bits-ui primitives.' },
    { q: 'Why does it hang?', a: 'vite-plugin-sveltekit-guard processes every route.' },
    { q: 'How to fix it?', a: 'See the upstream issue for the fix.' },
  ];
  const members = [
    { name: 'Alice', role: 'Eng', initials: 'A', color: 'bg-blue-200 text-blue-700' },
    { name: 'Bob', role: 'Design', initials: 'B', color: 'bg-violet-200 text-violet-700' },
    { name: 'Carol', role: 'PM', initials: 'C', color: 'bg-emerald-200 text-emerald-700' },
  ];
</script>

<svelte:head>
  <title>Page 400 — Content Explorer</title>
  <meta name="description" content="Route 400: Content Explorer. Uses bits-ui Collapsible, Accordion, Separator, Avatar with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-pink-100 px-2.5 py-0.5 text-xs font-semibold text-pink-700">Collapsible, Accordion, Separator, Avatar</span>
        <span class="text-xs text-neutral-400">Route 400</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Content Explorer</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #400 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Collapsible, Accordion, Separator, Avatar</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6">
    <div class="grid grid-cols-3 gap-3">
      {#each members as m}
        <div class="flex flex-col items-center gap-2 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm text-center">
          <Avatar.Root class="h-12 w-12 overflow-hidden rounded-full">
            <Avatar.Image src="" alt={m.name} />
            <Avatar.Fallback class="flex h-full w-full items-center justify-center font-semibold {m.color}">{m.initials}</Avatar.Fallback>
          </Avatar.Root>
          <div><p class="text-sm font-semibold text-neutral-900">{m.name}</p><p class="text-xs text-neutral-500">{m.role}</p></div>
        </div>
      {/each}
    </div>
    <Separator.Root class="h-px w-full bg-neutral-200" />
    <div class="space-y-3">
      {#each sections as section}
        <Collapsible.Root class="rounded-xl border border-neutral-200 bg-white shadow-sm">
          <div class="flex items-center justify-between px-5 py-3">
            <span class="text-sm font-semibold text-neutral-900">{section.title}</span>
            <Collapsible.Trigger class="flex h-8 w-8 items-center justify-center rounded-lg text-neutral-400 hover:bg-neutral-100 transition-colors">
              <svg class="h-4 w-4" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 6l4 4 4-4"/></svg>
            </Collapsible.Trigger>
          </div>
          <div class="border-t border-neutral-50 px-5 py-2 text-sm text-neutral-700">{section.items[0]}</div>
          <Collapsible.Content>
            {#each section.items.slice(1) as item}
              <div class="border-t border-neutral-50 px-5 py-2 text-sm text-neutral-700">{item}</div>
            {/each}
          </Collapsible.Content>
        </Collapsible.Root>
      {/each}
    </div>
    <Separator.Root class="h-px w-full bg-neutral-200" />
    <Accordion.Root class="rounded-2xl border border-neutral-200 bg-white shadow divide-y divide-neutral-100">
      {#each faq as item}
        <Accordion.Item value={item.q}>
          <Accordion.Header>
            <Accordion.Trigger class="flex w-full items-center justify-between px-6 py-4 text-sm font-semibold text-neutral-900 hover:bg-neutral-50">
              {item.q}
            </Accordion.Trigger>
          </Accordion.Header>
          <Accordion.Content class="px-6 pb-4 text-sm text-neutral-600">{item.a}</Accordion.Content>
        </Accordion.Item>
      {/each}
    </Accordion.Root>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 400 of 500</span>
      <div class="flex items-center gap-4">
        <a href="/page-399" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-401" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-400 */
  .page-page-400 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-400:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-400__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-400__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-400__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-400__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-400__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-400__action {
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
  .page-page-400__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-400__action:active {
    transform: scale(0.98);
  }
  .page-page-400__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-400__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-400__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-400__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-400__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-400__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
