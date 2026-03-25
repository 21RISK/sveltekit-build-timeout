<script lang="ts">
  import { Separator } from 'bits-ui';

</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 85</h3>
    <span class="rounded-full bg-red-100 px-2.5 py-0.5 text-xs font-medium text-red-700">
      Separator
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #85 demonstrating the Separator primitive from bits-ui with Tailwind CSS.
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
    <span class="h-1.5 w-1.5 rounded-full bg-red-400"></span>
    <span>ID: 085</span>
  </div>
</div>
