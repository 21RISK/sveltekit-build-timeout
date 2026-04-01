<script lang="ts">
  import { Progress, Slider, Tabs, Separator, Button } from 'bits-ui';
  let cpu = $state(67);
  let mem = $state(81);
  let disk = $state(54);
  const services = [
    { name: 'API Gateway', status: 'healthy', latency: 45, uptime: 99.97 },
    { name: 'Auth Service', status: 'healthy', latency: 12, uptime: 99.99 },
    { name: 'Database', status: 'degraded', latency: 120, uptime: 99.91 },
    { name: 'Cache', status: 'healthy', latency: 3, uptime: 100.0 },
  ];
  const statusClasses = { healthy: 'bg-emerald-500', degraded: 'bg-amber-500', down: 'bg-rose-500' };
  const tabs = [{ value: 'system', label: 'System' }, { value: 'services', label: 'Services' }, { value: 'alerts', label: 'Alerts' }];
</script>

<svelte:head>
  <title>Page 9124 — Monitor Board</title>
  <meta name="description" content="Route 9124: Monitor Board. Uses bits-ui Progress, Slider, Tabs, Separator, Button with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-amber-100 px-2.5 py-0.5 text-xs font-semibold text-amber-700">Progress, Slider, Tabs, Separator, Button</span>
        <span class="text-xs text-neutral-400">Route 9124</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Monitor Board</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #9124 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Progress, Slider, Tabs, Separator, Button</code>
        with Tailwind CSS v4. <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>.
      </p>
    </header>

    <main class="space-y-6">
      <div class="space-y-6">
    <Tabs.Root value="system" class="rounded-2xl border border-neutral-200 bg-white shadow">
      <Tabs.List class="flex gap-1 border-b border-neutral-200 px-4 pt-3">
        {#each tabs as t}
          <Tabs.Trigger value={t.value} class="rounded-t-lg px-4 py-2 text-xs font-medium text-neutral-600 data-[state=active]:text-blue-600 data-[state=active]:shadow-[inset_0_-2px_0_#2563eb] transition-colors">{t.label}</Tabs.Trigger>
        {/each}
      </Tabs.List>
      <Tabs.Content value="system" class="space-y-4 p-5">
        {#each [['CPU', cpu, 'bg-blue-500'], ['Memory', mem, 'bg-violet-500'], ['Disk', disk, 'bg-amber-500']] as [label, val, color]}
          <div class="space-y-1">
            <div class="flex justify-between text-xs"><span class="font-medium text-neutral-700">{label}</span><span class="tabular-nums text-neutral-500">{val}%</span></div>
            <Progress.Root value={val} max={100} class="h-2 w-full overflow-hidden rounded-full bg-neutral-100">
              <div class="h-full rounded-full {color}" style="width: {val}%"></div>
            </Progress.Root>
          </div>
        {/each}
      </Tabs.Content>
      <Tabs.Content value="services" class="divide-y divide-neutral-100">
        {#each services as svc}
          <div class="flex items-center gap-3 px-5 py-3">
            <span class="h-2 w-2 shrink-0 rounded-full {statusClasses[svc.status]}"></span>
            <span class="flex-1 text-xs font-medium text-neutral-900">{svc.name}</span>
            <span class="text-xs tabular-nums text-neutral-500">{svc.latency}ms</span>
          </div>
        {/each}
      </Tabs.Content>
      <Tabs.Content value="alerts" class="p-5 text-sm text-neutral-600">No active alerts.</Tabs.Content>
    </Tabs.Root>
    <Separator.Root class="h-px w-full bg-neutral-100" />
    <div class="space-y-3 rounded-2xl border border-neutral-200 bg-white p-5 shadow">
      <p class="text-sm font-semibold text-neutral-900">Alert Thresholds</p>
      <div class="space-y-1">
        <div class="flex justify-between text-xs"><span class="font-medium text-neutral-700">CPU Alert at</span><span class="tabular-nums text-neutral-500">{cpu}%</span></div>
        <Slider.Root bind:value={cpu} max={100} class="relative flex h-4 w-full items-center">
          <div class="relative h-1 w-full grow overflow-hidden rounded-full bg-neutral-200"><Slider.Range class="absolute h-full rounded-full bg-blue-600" /></div>
          <Slider.Thumb class="block h-3.5 w-3.5 rounded-full bg-white border border-blue-600/20 shadow focus-visible:outline-none" />
        </Slider.Root>
      </div>
    </div>
    <div class="flex gap-3">
      <Button.Root class="flex-1 rounded-lg bg-blue-600 py-2.5 text-sm font-semibold text-white hover:bg-blue-700 transition-colors">Acknowledge All</Button.Root>
      <Button.Root class="rounded-lg border border-neutral-300 bg-white px-4 py-2.5 text-sm font-semibold text-neutral-700 hover:bg-neutral-50 transition-colors">Export</Button.Root>
    </div>
  </div>
    </main>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Page 9124 of 10000</span>
      <div class="flex items-center gap-4">
        <a href="/page-9123" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-9125" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>

<style>
  /* Component: page-9124 */
  .page-page-9124 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-page-9124:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-page-9124__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-page-9124__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-page-9124__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-page-9124__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-page-9124__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-page-9124__action {
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
  .page-page-9124__action:hover {
    background-color: #1d4ed8;
  }
  .page-page-9124__action:active {
    transform: scale(0.98);
  }
  .page-page-9124__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-page-9124__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-page-9124__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-page-9124__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-page-9124__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-page-9124__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
