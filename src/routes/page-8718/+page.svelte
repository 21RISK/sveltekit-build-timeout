<script lang="ts">
  import { Avatar, Tabs, Collapsible, Separator, Button } from 'bits-ui';
  const members = [
    { name: 'Alice Chen', role: 'Frontend Eng', initials: 'AC', color: 'bg-blue-200 text-blue-700', status: 'online' },
    { name: 'Ben Torres', role: 'Backend Eng', initials: 'BT', color: 'bg-violet-200 text-violet-700', status: 'busy' },
    { name: 'Chloe Park', role: 'Designer', initials: 'CP', color: 'bg-emerald-200 text-emerald-700', status: 'online' },
    { name: 'Dan Wright', role: 'DevOps', initials: 'DW', color: 'bg-amber-200 text-amber-700', status: 'away' },
  ];
  const statusColor = { online: 'bg-emerald-500', busy: 'bg-rose-500', away: 'bg-amber-500', offline: 'bg-neutral-400' };
  const projects = [
    { id: 'p1', name: 'Auth Service Refactor', tasks: ['Update JWT lib', 'Add MFA', 'Write tests'] },
    { id: 'p2', name: 'Dashboard Redesign', tasks: ['New nav', 'Responsive layout', 'Dark mode'] },
  ];
  const tabs = [{ value: 'members', label: 'Members' }, { value: 'projects', label: 'Projects' }, { value: 'activity', label: 'Activity' }];
</script>

<svelte:head>
  <title>Page 8718 — Team Workspace</title>
  <meta name="description" content="Route 8718: Team Workspace. Uses bits-ui Avatar, Tabs, Collapsible, Separator, Button with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-teal-100 px-2.5 py-0.5 text-xs font-semibold text-teal-700">Avatar, Tabs, Collapsible, Separator, Button</span>
        <span class="text-xs text-neutral-400">Route 8718</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Team Workspace</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #8718 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Avatar, Tabs, Collapsible, Separator, Button</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6">
    <div class="grid grid-cols-2 gap-3">
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
      <Tabs.Content value="members" class="p-4 text-sm text-neutral-600"><p>{members.length} team members</p></Tabs.Content>
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
      <span>Page 8718 of 10000</span>
      <div class="flex items-center gap-4">
        <a href="/page-8717" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-8719" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
