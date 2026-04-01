<script lang="ts">
  import { Separator } from 'bits-ui';

</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 5</h3>
    <span class="rounded-full bg-blue-100 px-2.5 py-0.5 text-xs font-medium text-blue-700">
      Separator
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #5 demonstrating the Separator primitive from bits-ui with Tailwind CSS.
  </p>
  <div class="w-full space-y-4">
  <div class="space-y-1">
    <h4 class="text-sm font-semibold leading-none text-neutral-900">Radix Primitives</h4>
    <p class="text-sm text-neutral-500">An open-source UI component library.</p>
  </div>
  <Separator.Root class="h-px w-full bg-neutral-200" />
  <div class="flex items-center gap-4 text-sm text-neutral-600">
    <span>Blog</span>
    <Separator.Root orientation="vertical" class="h-4 w-px bg-neutral-200" />
    <span>Docs</span>
    <Separator.Root orientation="vertical" class="h-4 w-px bg-neutral-200" />
    <span>Source</span>
  </div>
</div>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-blue-400"></span>
    <span>ID: 005</span>
  </div>
</div>

<style>
  /* Component: component005 */
  .page-component005 {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
    border-radius: 0.75rem;
    background-color: #ffffff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    transition: box-shadow 0.2s ease;
  }
  .page-component005:hover {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  }
  .page-component005__header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 0.75rem;
    border-bottom: 1px solid #e5e7eb;
  }
  .page-component005__title {
    font-size: 1.125rem;
    font-weight: 600;
    color: #111827;
    letter-spacing: -0.01em;
    margin: 0;
  }
  .page-component005__badge {
    display: inline-flex;
    align-items: center;
    padding: 0.2rem 0.6rem;
    border-radius: 9999px;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #dbeafe;
    color: #1d4ed8;
  }
  .page-component005__body {
    font-size: 0.875rem;
    line-height: 1.6;
    color: #374151;
  }
  .page-component005__footer {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.75rem;
    color: #9ca3af;
    padding-top: 0.75rem;
    border-top: 1px solid #f3f4f6;
  }
  .page-component005__action {
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
  .page-component005__action:hover {
    background-color: #1d4ed8;
  }
  .page-component005__action:active {
    transform: scale(0.98);
  }
  .page-component005__action--secondary {
    background-color: #f3f4f6;
    color: #374151;
  }
  .page-component005__action--secondary:hover {
    background-color: #e5e7eb;
  }
  .page-component005__divider {
    height: 1px;
    background-color: #e5e7eb;
    margin: 0.5rem 0;
  }
  .page-component005__list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0.375rem;
  }
  .page-component005__list-item {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    background-color: #f9fafb;
  }
  .page-component005__list-item:hover {
    background-color: #f3f4f6;
  }
</style>
