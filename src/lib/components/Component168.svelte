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
    <h3 class="text-sm font-semibold text-neutral-900">Component 168</h3>
    <span class="rounded-full bg-teal-100 px-2 py-0.5 text-xs font-medium text-teal-700">Tabs, Separator, Avatar</span>
  </div>
  <p class="text-xs text-neutral-500">Component #168 — bits-ui Tabs, Separator, Avatar with Tailwind CSS v4.</p>
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
    <span class="h-1.5 w-1.5 rounded-full bg-teal-400"></span>
    <span>ID: 168</span>
  </div>
</div>

<style>
  /* Component: component168 */
  .page-component168 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component168:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component168__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component168__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component168__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component168__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component168__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component168__action {
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
  .page-component168__action:hover {
    background-color: #1d4ed8;
  }
  .page-component168__action:active {
    transform: scale(0.98);
  }
  .page-component168__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component168__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component168__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component168__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component168__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component168__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
