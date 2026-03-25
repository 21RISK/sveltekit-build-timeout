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
  <title>Page 230 — Content Explorer</title>
  <meta name="description" content="Route 230: Content Explorer. Uses bits-ui Collapsible, Accordion, Separator, Avatar with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-pink-100 px-2.5 py-0.5 text-xs font-semibold text-pink-700">Collapsible, Accordion, Separator, Avatar</span>
        <span class="text-xs text-neutral-400">Route 230</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Content Explorer</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #230 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Collapsible, Accordion, Separator, Avatar</code>
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
      <span>Page 230 of 500</span>
      <div class="flex items-center gap-4">
        <a href="/page-229" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-231" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
