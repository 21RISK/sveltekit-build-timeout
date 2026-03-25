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
  <title>Page 3854 — Monitor Board</title>
  <meta name="description" content="Route 3854: Monitor Board. Uses bits-ui Progress, Slider, Tabs, Separator, Button with Tailwind CSS v4." />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-3xl space-y-8">

    <header class="space-y-1">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-amber-100 px-2.5 py-0.5 text-xs font-semibold text-amber-700">Progress, Slider, Tabs, Separator, Button</span>
        <span class="text-xs text-neutral-400">Route 3854</span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Monitor Board</h1>
      <p class="text-base text-neutral-600">
        Reproduction route #3854 — bits-ui <code class="rounded bg-neutral-100 px-1.5 py-0.5 font-mono text-sm">Progress, Slider, Tabs, Separator, Button</code>
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
      <span>Page 3854 of 10000</span>
      <div class="flex items-center gap-4">
        <a href="/page-3853" class="hover:text-neutral-600">← Previous</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
        <a href="/page-3855" class="hover:text-neutral-600">Next →</a>
      </div>
    </footer>

  </div>
</div>
