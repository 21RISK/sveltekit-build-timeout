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
  <title>Page 98 — User Avatars</title>
  <meta name="description" content="Route 098 in the build-timeout reproduction. Uses bits-ui Avatar with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-amber-100 px-2.5 py-0.5 text-xs font-semibold text-amber-700">
          Avatar
        </span>
        <span class="text-xs text-neutral-400">Route 098</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">User Avatars</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #98 — testing SvelteKit build performance with bits-ui
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
      <span>Page 098 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-097" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-099" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-098 */
  .page-page-098 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-098:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-098__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-098__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-098__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-098__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-098__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-098__action {
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
  .page-page-098__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-098__action:active {
    transform: scale(0.98);
  }
  .page-page-098__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-098__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-098__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-098__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-098__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-098__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
