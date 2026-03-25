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
  <title>Page 84 — Progress Tracker</title>
  <meta name="description" content="Route 084 in the build-timeout reproduction. Uses bits-ui Progress with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-emerald-100 px-2.5 py-0.5 text-xs font-semibold text-emerald-700">
          Progress
        </span>
        <span class="text-xs text-neutral-400">Route 084</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Progress Tracker</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #84 — testing SvelteKit build performance with bits-ui
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
      <span>Page 084 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-083" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-085" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
