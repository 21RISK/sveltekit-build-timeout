<script lang="ts">
  import { Accordion, Collapsible, Avatar, Separator, Button } from 'bits-ui';
  const categories = [
    { id: 'started', title: 'Getting Started', articles: ['Installation', 'Configuration', 'First Project', 'Deployment'] },
    { id: 'advanced', title: 'Advanced', articles: ['Performance', 'Security', 'Testing', 'CI/CD'] },
    { id: 'api', title: 'API Reference', articles: ['REST Endpoints', 'WebSocket', 'GraphQL', 'SDKs'] },
  ];
  const faq = [
    { q: 'How do I reset my password?', a: 'Go to Settings → Security → Reset Password.' },
    { q: 'Can I export my data?', a: 'Yes, from Settings → Data → Export as JSON or CSV.' },
    { q: 'Is there an SLA?', a: '99.9% uptime SLA on all paid plans.' },
  ];
  const authors = [
    { name: 'Docs Team', initials: 'DT', color: 'bg-blue-200 text-blue-700' },
    { name: 'Engineering', initials: 'EN', color: 'bg-violet-200 text-violet-700' },
  ];
</script>

<svelte:head>
  <title>Page 7935 — Knowledge Base</title>
  <meta name="description" content="Route 7935: Knowledge Base. Uses bits-ui Accordion, Collapsible, Avatar, Separator, Button with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-rose-100 px-2.5 py-0.5 text-xs font-semibold text-rose-700">Accordion, Collapsible, Avatar, Separator, Button</span>
        <span class="text-xs text-neutral-400">Route 7935</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Knowledge Base</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #7935 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Accordion, Collapsible, Avatar, Separator, Button</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6">
    <div class="grid grid-cols-1 gap-4 sm:grid-cols-3">
      {#each categories as cat}
        <Collapsible.Root class="rounded-xl border border-neutral-200 bg-white shadow-sm">
          <div class="flex items-center justify-between px-4 py-3">
            <span class="text-xs font-semibold text-neutral-900">{cat.title}</span>
            <Collapsible.Trigger class="flex h-7 w-7 items-center justify-center rounded-lg text-neutral-400 hover:bg-neutral-100 transition-colors">
              <svg class="h-3.5 w-3.5" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 6l4 4 4-4"/></svg>
            </Collapsible.Trigger>
          </div>
          <div class="border-t border-neutral-50 px-4 py-2 text-xs text-neutral-700">{cat.articles[0]}</div>
          <Collapsible.Content>
            {#each cat.articles.slice(1) as a}
              <div class="border-t border-neutral-50 px-4 py-2 text-xs text-neutral-700">{a}</div>
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
            <Accordion.Trigger class="flex w-full items-center justify-between px-5 py-3 text-xs font-semibold text-neutral-900 hover:bg-neutral-50 transition-colors">
              {item.q}
            </Accordion.Trigger>
          </Accordion.Header>
          <Accordion.Content class="px-5 pb-3 text-xs text-neutral-600">{item.a}</Accordion.Content>
        </Accordion.Item>
      {/each}
    </Accordion.Root>
    <div class="flex items-center gap-3 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm">
      {#each authors as a}
        <Avatar.Root class="h-8 w-8 overflow-hidden rounded-full shrink-0">
          <Avatar.Image src="" alt={a.name} />
          <Avatar.Fallback class="flex h-full w-full items-center justify-center text-xs font-semibold {a.color}">{a.initials}</Avatar.Fallback>
        </Avatar.Root>
      {/each}
      <p class="text-xs text-neutral-600">Maintained by Docs and Engineering</p>
    </div>
    <Button.Root class="w-full rounded-lg border border-neutral-300 bg-white py-2.5 text-sm font-semibold text-neutral-700 hover:bg-neutral-50 transition-colors">Browse All Articles</Button.Root>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 7935 of 10000</span>
      <div class="flex items-center gap-4">
        <a href="/page-7934" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-7936" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-7935 */
  .page-page-7935 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-7935:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-7935__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-7935__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-7935__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-7935__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-7935__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-7935__action {
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
  .page-page-7935__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-7935__action:active {
    transform: scale(0.98);
  }
  .page-page-7935__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-7935__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-7935__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-7935__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-7935__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-7935__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
