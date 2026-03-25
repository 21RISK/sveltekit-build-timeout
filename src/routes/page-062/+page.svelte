<script lang="ts">
  import { Button } from 'bits-ui';
  const actions = [
    { label: 'Save Draft', variant: 'secondary' },
    { label: 'Publish', variant: 'primary' },
    { label: 'Delete', variant: 'danger' },
    { label: 'Preview', variant: 'ghost' },
  ];
</script>

<svelte:head>
  <title>Page 62 — Button Panel</title>
  <meta name="description" content="Route 062 in the build-timeout reproduction. Uses bits-ui Button with Tailwind CSS." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-blue-100 px-2.5 py-0.5 text-xs font-semibold text-blue-700">
          Button
        </span>
        <span class="text-xs text-neutral-400">Route 062</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Button Panel</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #62 — testing SvelteKit build performance with bits-ui
        <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Button</code>
        primitives and Tailwind CSS v4. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="flex flex-wrap gap-3">
    <Button.Root class="inline-flex items-center gap-2 rounded-lg bg-blue-600 px-5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-blue-700 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600 transition-colors">
      <svg class="h-4 w-4" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M13 4L6 11 3 8"/></svg>
      Save Changes
    </Button.Root>
    <Button.Root class="inline-flex items-center gap-2 rounded-lg border border-neutral-300 bg-white px-5 py-2.5 text-sm font-semibold text-neutral-700 shadow-sm hover:bg-neutral-50 transition-colors">
      Cancel
    </Button.Root>
    <Button.Root class="inline-flex items-center gap-2 rounded-lg bg-red-600 px-5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-red-700 transition-colors">
      <svg class="h-4 w-4" viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 4l8 8M12 4l-8 8"/></svg>
      Delete
    </Button.Root>
    <Button.Root class="inline-flex items-center gap-2 rounded-lg bg-emerald-600 px-5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-emerald-700 transition-colors">
      Export
    </Button.Root>
    <Button.Root disabled class="inline-flex items-center gap-2 rounded-lg bg-neutral-200 px-5 py-2.5 text-sm font-semibold text-neutral-400 cursor-not-allowed">
      Disabled
    </Button.Root>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 062 of 100</span>
      <div class="flex items-center gap-4">
        <a href="/page-061" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-063" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
