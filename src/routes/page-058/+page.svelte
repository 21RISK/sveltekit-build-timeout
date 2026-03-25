<script lang="ts">
  import { Avatar } from 'bits-ui';
  const users = [
    { name: 'Alice Johnson', role: 'Engineer', initials: 'AJ', color: 'bg-violet-200 text-violet-700' },
    { name: 'Bob Smith', role: 'Designer', initials: 'BS', color: 'bg-blue-200 text-blue-700' },
    { name: 'Carol White', role: 'Product', initials: 'CW', color: 'bg-emerald-200 text-emerald-700' },
    { name: 'Dave Brown', role: 'Marketing', initials: 'DB', color: 'bg-amber-200 text-amber-700' },
    { name: 'Eve Davis', role: 'Sales', initials: 'ED', color: 'bg-rose-200 text-rose-700' },
    { name: 'Frank Lee', role: 'Support', initials: 'FL', color: 'bg-cyan-200 text-cyan-700' },
  ];
</script>

<svelte:head>
  <title>Page 58 — User Avatars</title>
  <meta name="description" content="Route 058 in the build-timeout reproduction. Uses bits-ui Avatar with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-cyan-100 px-2.5 py-0.5 text-xs font-semibold text-cyan-700">
          Avatar
        </span>
        <span class="text-xs text-neutral-400">Route 058</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">User Avatars</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #58 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Avatar</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="grid grid-cols-2 gap-4 sm:grid-cols-3">
    {#each users as user}
      <div class="flex items-center gap-3 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm">
        <Avatar.Root class="h-10 w-10 shrink-0 overflow-hidden rounded-full">
          <Avatar.Image src="" alt={user.name} class="h-full w-full object-cover" />
          <Avatar.Fallback class="flex h-full w-full items-center justify-center text-xs font-semibold {user.color}">
            {user.initials}
          </Avatar.Fallback>
        </Avatar.Root>
        <div class="min-w-0">
          <p class="truncate text-sm font-medium text-neutral-900">{user.name}</p>
          <p class="truncate text-xs text-neutral-500">{user.role}</p>
        </div>
      </div>
    {/each}
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 058 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-057" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-059" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
