<script lang="ts">
  import { Tabs, Separator, Avatar } from 'bits-ui';
  const tabs = [
    { value: 'members', label: 'Members' },
    { value: 'activity', label: 'Activity' },
    { value: 'settings', label: 'Settings' },
  ];
  const people = [
    { name: 'Alex', role: 'Admin', initials: 'AX', color: 'bg-blue-200 text-blue-700' },
    { name: 'Sam', role: 'Editor', initials: 'SM', color: 'bg-violet-200 text-violet-700' },
    { name: 'Kim', role: 'Viewer', initials: 'KM', color: 'bg-emerald-200 text-emerald-700' },
  ];
</script>

<div class="flex flex-col gap-3 rounded-2xl border border-neutral-100 bg-white p-5 shadow-sm transition-shadow hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-sm font-semibold text-neutral-900">Component 213</h3>
    <span class="rounded-full bg-emerald-100 px-2 py-0.5 text-xs font-medium text-emerald-700">Tabs, Separator, Avatar</span>
  </div>
  <p class="text-xs text-neutral-500">Component #213 — bits-ui Tabs, Separator, Avatar with Tailwind CSS v4.</p>
  <div class="rounded-xl border border-neutral-200 bg-white shadow-sm">
    <Tabs.Root value="members">
      <Tabs.List class="flex gap-0.5 border-b border-neutral-200 px-3 pt-2">
        {#each tabs as t}
          <Tabs.Trigger value={t.value} class="rounded-t-md px-3 py-2 text-xs font-medium text-neutral-600 data-[state=active]:text-blue-600 data-[state=active]:shadow-[inset_0_-2px_0_#2563eb] transition-colors">{t.label}</Tabs.Trigger>
        {/each}
      </Tabs.List>
      <Tabs.Content value="members" class="p-4">
        <div class="space-y-2">
          {#each people as p}
            <div class="flex items-center gap-3">
              <Avatar.Root class="h-8 w-8 overflow-hidden rounded-full shrink-0">
                <Avatar.Image src="" alt={p.name} />
                <Avatar.Fallback class="flex h-full w-full items-center justify-center text-xs font-semibold {p.color}">{p.initials}</Avatar.Fallback>
              </Avatar.Root>
              <div class="min-w-0">
                <p class="text-xs font-medium text-neutral-900">{p.name}</p>
                <p class="text-xs text-neutral-500">{p.role}</p>
              </div>
            </div>
          {/each}
        </div>
      </Tabs.Content>
      <Tabs.Content value="activity" class="p-4 text-xs text-neutral-600">No recent activity.</Tabs.Content>
      <Tabs.Content value="settings" class="p-4 text-xs text-neutral-600">
        <Separator.Root class="my-2 h-px w-full bg-neutral-100" />
        <p>Settings panel coming soon.</p>
      </Tabs.Content>
    </Tabs.Root>
  </div>
  <div class="mt-1 flex items-center gap-1.5 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-emerald-400"></span>
    <span>ID: 213</span>
  </div>
</div>
