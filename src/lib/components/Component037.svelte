<script lang="ts">
  import { Tabs } from 'bits-ui';

</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 37</h3>
    <span class="rounded-full bg-red-100 px-2.5 py-0.5 text-xs font-medium text-red-700">
      Tabs
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #37 demonstrating the Tabs primitive from bits-ui with Tailwind CSS.
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
    <span class="h-1.5 w-1.5 rounded-full bg-red-400"></span>
    <span>ID: 037</span>
  </div>
</div>

<style>
  /* Component: component037 */
  .page-component037 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component037:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component037__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component037__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component037__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component037__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component037__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component037__action {
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
  .page-component037__action:hover {
    background-color: #1d4ed8;
  }
  .page-component037__action:active {
    transform: scale(0.98);
  }
  .page-component037__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component037__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component037__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component037__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component037__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component037__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
