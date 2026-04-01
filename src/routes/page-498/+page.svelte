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
  <title>Page 498 — User Profile</title>
  <meta name="description" content="Route 498: User Profile. Uses bits-ui Avatar, Tabs, Separator, Button with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-teal-100 px-2.5 py-0.5 text-xs font-semibold text-teal-700">Avatar, Tabs, Separator, Button</span>
        <span class="text-xs text-neutral-400">Route 498</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">User Profile</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #498 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Avatar, Tabs, Separator, Button</code>
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
      <span>Page 498 of 500</span>
      <div class="flex items-center gap-4">
        <a href="/page-497" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-499" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-498 */
  .page-page-498 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-498:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-498__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-498__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-498__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-498__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-498__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-498__action {
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
  .page-page-498__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-498__action:active {
    transform: scale(0.98);
  }
  .page-page-498__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-498__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-498__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-498__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-498__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-498__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
