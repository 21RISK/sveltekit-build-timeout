<script lang="ts">
  import { Avatar, Tabs, Separator, Button } from 'bits-ui';
  const users = [
    { name: 'Alice Johnson', role: 'Senior Engineer', initials: 'AJ', color: 'bg-violet-200 text-violet-700' },
    { name: 'Bob Smith', role: 'Lead Designer', initials: 'BS', color: 'bg-blue-200 text-blue-700' },
    { name: 'Carol White', role: 'Product Manager', initials: 'CW', color: 'bg-emerald-200 text-emerald-700' },
    { name: 'Dave Brown', role: 'DevOps', initials: 'DB', color: 'bg-amber-200 text-amber-700' },
  ];
  const tabs = [{ value: 'profile', label: 'Profile' }, { value: 'activity', label: 'Activity' }, { value: 'teams', label: 'Teams' }];
</script>

<svelte:head>
  <title>Page 148 — User Profile</title>
  <meta name="description" content="Route 148: User Profile. Uses bits-ui Avatar, Tabs, Separator, Button with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-teal-100 px-2.5 py-0.5 text-xs font-semibold text-teal-700">Avatar, Tabs, Separator, Button</span>
        <span class="text-xs text-neutral-400">Route 148</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">User Profile</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #148 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Avatar, Tabs, Separator, Button</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6">
    <div class="grid grid-cols-2 gap-4">
      {#each users as user}
        <div class="flex items-center gap-3 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm">
          <Avatar.Root class="h-10 w-10 overflow-hidden rounded-full shrink-0">
            <Avatar.Image src="" alt={user.name} />
            <Avatar.Fallback class="flex h-full w-full items-center justify-center text-xs font-semibold {user.color}">{user.initials}</Avatar.Fallback>
          </Avatar.Root>
          <div class="min-w-0">
            <p class="truncate text-sm font-semibold text-neutral-900">{user.name}</p>
            <p class="truncate text-xs text-neutral-500">{user.role}</p>
          </div>
        </div>
      {/each}
    </div>
    <Separator.Root class="h-px w-full bg-neutral-200" />
    <Tabs.Root value="profile" class="rounded-2xl border border-neutral-200 bg-white shadow">
      <Tabs.List class="flex gap-1 border-b border-neutral-200 px-4 pt-3">
        {#each tabs as t}
          <Tabs.Trigger value={t.value} class="rounded-t-lg px-4 py-2 text-sm font-medium text-neutral-600 data-[state=active]:text-blue-600 data-[state=active]:shadow-[inset_0_-2px_0_#2563eb]">{t.label}</Tabs.Trigger>
        {/each}
      </Tabs.List>
      {#each tabs as t}
        <Tabs.Content value={t.value} class="p-6 text-sm text-neutral-600">Details for {t.label}.</Tabs.Content>
      {/each}
    </Tabs.Root>
    <Button.Root class="w-full rounded-lg bg-blue-600 px-5 py-2.5 text-sm font-semibold text-white hover:bg-blue-700">Edit Profile</Button.Root>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 148 of 500</span>
      <div class="flex items-center gap-4">
        <a href="/page-147" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-149" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
