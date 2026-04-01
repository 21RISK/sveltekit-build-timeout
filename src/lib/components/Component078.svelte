<script lang="ts">
  import { Collapsible } from 'bits-ui';

</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 78</h3>
    <span class="rounded-full bg-green-100 px-2.5 py-0.5 text-xs font-medium text-green-700">
      Collapsible
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #78 demonstrating the Collapsible primitive from bits-ui with Tailwind CSS.
  </p>
  <Collapsible.Root class="w-full space-y-2">
  <div class="flex items-center justify-between space-x-4 px-4">
    <h4 class="text-sm font-semibold text-neutral-900">Team Members</h4>
    <Collapsible.Trigger class="rounded-md p-2 text-neutral-500 hover:bg-neutral-100 hover:text-neutral-900">
      ↕
    </Collapsible.Trigger>
  </div>
  <div class="rounded-md border border-neutral-200 px-4 py-3 text-sm text-neutral-700">@alice</div>
  <Collapsible.Content class="space-y-2">
    <div class="rounded-md border border-neutral-200 px-4 py-3 text-sm text-neutral-700">@bob</div>
    <div class="rounded-md border border-neutral-200 px-4 py-3 text-sm text-neutral-700">@charlie</div>
  </Collapsible.Content>
</Collapsible.Root>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-green-400"></span>
    <span>ID: 078</span>
  </div>
</div>

<style>
  /* Component: component078 */
  .page-component078 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component078:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component078__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component078__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component078__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component078__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component078__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component078__action {
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
  .page-component078__action:hover {
    background-color: #1d4ed8;
  }
  .page-component078__action:active {
    transform: scale(0.98);
  }
  .page-component078__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component078__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component078__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component078__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component078__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component078__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
