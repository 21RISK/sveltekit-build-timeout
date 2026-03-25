<script lang="ts">
  import { Tabs } from 'bits-ui';

</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 27</h3>
    <span class="rounded-full bg-green-100 px-2.5 py-0.5 text-xs font-medium text-green-700">
      Tabs
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #27 demonstrating the Tabs primitive from bits-ui with Tailwind CSS.
  </p>
  <Tabs.Root value="account" class="w-full">
  <Tabs.List class="flex border-b border-neutral-200">
    <Tabs.Trigger
      value="account"
      class="px-4 py-2 text-sm font-medium text-neutral-600 data-[state=active]:border-b-2 data-[state=active]:border-blue-600 data-[state=active]:text-blue-600"
    >Account</Tabs.Trigger>
    <Tabs.Trigger
      value="password"
      class="px-4 py-2 text-sm font-medium text-neutral-600 data-[state=active]:border-b-2 data-[state=active]:border-blue-600 data-[state=active]:text-blue-600"
    >Password</Tabs.Trigger>
    <Tabs.Trigger
      value="settings"
      class="px-4 py-2 text-sm font-medium text-neutral-600 data-[state=active]:border-b-2 data-[state=active]:border-blue-600 data-[state=active]:text-blue-600"
    >Settings</Tabs.Trigger>
  </Tabs.List>
  <Tabs.Content value="account" class="mt-4 p-4">
    <p class="text-sm text-neutral-600">Make changes to your account here.</p>
  </Tabs.Content>
  <Tabs.Content value="password" class="mt-4 p-4">
    <p class="text-sm text-neutral-600">Change your password here.</p>
  </Tabs.Content>
  <Tabs.Content value="settings" class="mt-4 p-4">
    <p class="text-sm text-neutral-600">Edit your settings here.</p>
  </Tabs.Content>
</Tabs.Root>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-green-400"></span>
    <span>ID: 027</span>
  </div>
</div>
