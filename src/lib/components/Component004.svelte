<script lang="ts">
  import { Progress } from 'bits-ui';

  let progressItems = [
    { label: 'Design', value: 85 },
    { label: 'Development', value: 62 },
    { label: 'Testing', value: 40 },
    { label: 'Deployment', value: 20 },
  ];
</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 4</h3>
    <span class="rounded-full bg-blue-100 px-2.5 py-0.5 text-xs font-medium text-blue-700">
      Progress
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #4 demonstrating the Progress primitive from bits-ui with Tailwind CSS.
  </p>
  <div class="flex w-full flex-col gap-4">
  {#each progressItems as item}
    <div class="flex flex-col gap-1">
      <div class="flex justify-between text-sm">
        <span class="font-medium text-neutral-700">{item.label}</span>
        <span class="text-neutral-500">{item.value}%</span>
      </div>
      <Progress.Root
        value={item.value}
        max={100}
        class="relative h-2 w-full overflow-hidden rounded-full bg-neutral-200"
      >
        <div class="h-full bg-blue-600 transition-all duration-300" style="width: {item.value}%" />
      </Progress.Root>
    </div>
  {/each}
</div>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-blue-400"></span>
    <span>ID: 004</span>
  </div>
</div>

<style>
  /* Component: component004 */
  .page-component004 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component004:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component004__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component004__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component004__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component004__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component004__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component004__action {
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
  .page-component004__action:hover {
    background-color: #1d4ed8;
  }
  .page-component004__action:active {
    transform: scale(0.98);
  }
  .page-component004__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component004__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component004__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component004__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component004__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component004__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
