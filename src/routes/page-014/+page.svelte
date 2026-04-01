<script lang="ts">
  import { Progress } from 'bits-ui';
  const tasks = [
    { label: 'Planning', value: 100, color: 'bg-emerald-500' },
    { label: 'Design', value: 85, color: 'bg-blue-500' },
    { label: 'Development', value: 62, color: 'bg-violet-500' },
    { label: 'Testing', value: 38, color: 'bg-amber-500' },
    { label: 'Deployment', value: 15, color: 'bg-rose-500' },
  ];
</script>

<svelte:head>
  <title>Page 14 — Progress Tracker</title>
  <meta name="description" content="Route 014 in the build-timeout reproduction. Uses bits-ui Progress with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-violet-100 px-2.5 py-0.5 text-xs font-semibold text-violet-700">
          Progress
        </span>
        <span class="text-xs text-neutral-400">Route 014</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Progress Tracker</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #14 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Progress</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-5 rounded-2xl border border-neutral-200 bg-white p-6 shadow">
    {#each tasks as task}
      <div class="space-y-1.5">
        <div class="flex items-center justify-between text-sm">
          <span class="font-medium text-neutral-900">{task.label}</span>
          <span class="tabular-nums text-neutral-500">{task.value}%</span>
        </div>
        <Progress.Root
          value={task.value}
          max={100}
          class="relative h-2.5 w-full overflow-hidden rounded-full bg-neutral-100"
        >
          <div class="h-full rounded-full transition-all duration-500 {task.color}" style="width: {task.value}%"></div>
        </Progress.Root>
      </div>
    {/each}
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 014 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-013" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-015" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-014 */
  .page-page-014 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-014:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-014__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-014__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-014__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-014__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-014__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-014__action {
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
  .page-page-014__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-014__action:active {
    transform: scale(0.98);
  }
  .page-page-014__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-014__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-014__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-014__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-014__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-014__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
