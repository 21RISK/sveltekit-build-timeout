<script lang="ts">
  import { Switch } from 'bits-ui';

  let toggles = [
    { label: 'Notifications', description: 'Receive email notifications', enabled: true },
    { label: 'Marketing', description: 'Receive marketing emails', enabled: false },
    { label: 'Updates', description: 'Get product updates', enabled: true },
  ];
</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 26</h3>
    <span class="rounded-full bg-green-100 px-2.5 py-0.5 text-xs font-medium text-green-700">
      Switch
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #26 demonstrating the Switch primitive from bits-ui with Tailwind CSS.
  </p>
  <div class="flex flex-col gap-4">
  {#each toggles as toggle}
    <div class="flex items-center justify-between">
      <div>
        <p class="text-sm font-medium text-neutral-900">{toggle.label}</p>
        <p class="text-xs text-neutral-500">{toggle.description}</p>
      </div>
      <Switch.Root
        class="relative inline-flex h-6 w-11 cursor-pointer rounded-full border-2 border-transparent bg-neutral-200 transition-colors data-[state=checked]:bg-blue-600"
      >
        <Switch.Thumb class="pointer-events-none block h-5 w-5 rounded-full bg-white shadow-lg ring-0 transition-transform data-[state=checked]:translate-x-5 data-[state=unchecked]:translate-x-0" />
      </Switch.Root>
    </div>
  {/each}
</div>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-green-400"></span>
    <span>ID: 026</span>
  </div>
</div>

<style>
  /* Component: component026 */
  .page-component026 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component026:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component026__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component026__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component026__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component026__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component026__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component026__action {
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
  .page-component026__action:hover {
    background-color: #1d4ed8;
  }
  .page-component026__action:active {
    transform: scale(0.98);
  }
  .page-component026__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component026__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component026__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component026__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component026__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component026__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
