<script lang="ts">
  import { Avatar, Tabs, Collapsible, Separator, Button } from 'bits-ui';
  const members = [
    { name: 'Alice Chen', role: 'Frontend Eng', initials: 'AC', color: 'bg-blue-200 text-blue-700', status: 'online' },
    { name: 'Ben Torres', role: 'Backend Eng', initials: 'BT', color: 'bg-violet-200 text-violet-700', status: 'busy' },
    { name: 'Chloe Park', role: 'Designer', initials: 'CP', color: 'bg-emerald-200 text-emerald-700', status: 'online' },
    { name: 'Dan Wright', role: 'DevOps', initials: 'DW', color: 'bg-amber-200 text-amber-700', status: 'away' },
    { name: 'Eva Kowalski', role: 'Product', initials: 'EK', color: 'bg-rose-200 text-rose-700', status: 'offline' },
    { name: 'Finn Larsen', role: 'QA', initials: 'FL', color: 'bg-cyan-200 text-cyan-700', status: 'online' },
  ];
  const statusColor = { online: 'bg-emerald-500', busy: 'bg-rose-500', away: 'bg-amber-500', offline: 'bg-neutral-400' };
  const projects = [
    { id: 'p1', name: 'Auth Service Refactor', tasks: ['Update JWT lib', 'Add MFA', 'Write tests'] },
    { id: 'p2', name: 'Dashboard Redesign', tasks: ['New nav', 'Responsive layout', 'Dark mode'] },
    { id: 'p3', name: 'API v3 Migration', tasks: ['Schema updates', 'Client codegen', 'Docs'] },
  ];
  const tabs = [{ value: 'members', label: 'Members' }, { value: 'projects', label: 'Projects' }, { value: 'activity', label: 'Activity' }];
</script>

<svelte:head>
  <title>Page 698 — Team Workspace</title>
  <meta name="description" content="Route 698: Team Workspace. Uses bits-ui Avatar, Tabs, Collapsible, Separator, Button with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-teal-100 px-2.5 py-0.5 text-xs font-semibold text-teal-700">Avatar, Tabs, Collapsible, Separator, Button</span>
        <span class="text-xs text-neutral-400">Route 698</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Team Workspace</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #698 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Avatar, Tabs, Collapsible, Separator, Button</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6">
    <div class="grid grid-cols-2 gap-3 sm:grid-cols-3">
      {#each members as m}
        <div class="relative flex items-center gap-3 rounded-xl border border-neutral-200 bg-white p-3 shadow-sm">
          <div class="relative shrink-0">
            <Avatar.Root class="h-10 w-10 overflow-hidden rounded-full">
              <Avatar.Image src="" alt={m.name} />
              <Avatar.Fallback class="flex h-full w-full items-center justify-center text-xs font-semibold {m.color}">{m.initials}</Avatar.Fallback>
            </Avatar.Root>
            <span class="absolute bottom-0 right-0 block h-2.5 w-2.5 rounded-full border-2 border-white {statusColor[m.status]}"></span>
          </div>
          <div class="min-w-0">
            <p class="truncate text-xs font-semibold text-neutral-900">{m.name}</p>
            <p class="truncate text-xs text-neutral-500">{m.role}</p>
          </div>
        </div>
      {/each}
    </div>
    <Separator.Root class="h-px w-full bg-neutral-200" />
    <Tabs.Root value="members" class="rounded-2xl border border-neutral-200 bg-white shadow">
      <Tabs.List class="flex gap-1 border-b border-neutral-200 px-4 pt-3">
        {#each tabs as t}
          <Tabs.Trigger value={t.value} class="rounded-t-lg px-4 py-2 text-xs font-medium text-neutral-600 data-[state=active]:text-blue-600 data-[state=active]:shadow-[inset_0_-2px_0_#2563eb] transition-colors">{t.label}</Tabs.Trigger>
        {/each}
      </Tabs.List>
      <Tabs.Content value="members" class="p-4 text-sm text-neutral-600">
        <p>{members.length} team members</p>
      </Tabs.Content>
      <Tabs.Content value="projects" class="space-y-3 p-4">
        {#each projects as p}
          <Collapsible.Root class="rounded-xl border border-neutral-100 bg-neutral-50">
            <div class="flex items-center justify-between px-4 py-3">
              <span class="text-xs font-semibold text-neutral-900">{p.name}</span>
              <Collapsible.Trigger class="flex h-7 w-7 items-center justify-center rounded-lg text-neutral-400 hover:bg-neutral-200 transition-colors">
                <svg class="h-3.5 w-3.5" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 6l4 4 4-4"/></svg>
              </Collapsible.Trigger>
            </div>
            <div class="border-t border-neutral-200 px-4 py-2 text-xs text-neutral-600">{p.tasks[0]}</div>
            <Collapsible.Content>
              {#each p.tasks.slice(1) as task}
                <div class="border-t border-neutral-100 px-4 py-2 text-xs text-neutral-600">{task}</div>
              {/each}
            </Collapsible.Content>
          </Collapsible.Root>
        {/each}
      </Tabs.Content>
      <Tabs.Content value="activity" class="p-4 text-sm text-neutral-600">No recent activity.</Tabs.Content>
    </Tabs.Root>
    <Button.Root class="w-full rounded-lg bg-blue-600 py-2.5 text-sm font-semibold text-white hover:bg-blue-700 transition-colors">Invite Member</Button.Root>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 698 of 1000</span>
      <div class="flex items-center gap-4">
        <a href="/page-697" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-699" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-698 */
  .page-page-698 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-698:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-698__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-698__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-698__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-698__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-698__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-698__action {
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
  .page-page-698__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-698__action:active {
    transform: scale(0.98);
  }
  .page-page-698__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-698__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-698__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-698__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-698__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-698__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
