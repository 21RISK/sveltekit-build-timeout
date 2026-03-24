<script lang="ts">
  import { Checkbox } from 'bits-ui';

  let options = [
    { id: 'opt1', label: 'Option One', checked: false },
    { id: 'opt2', label: 'Option Two', checked: true },
    { id: 'opt3', label: 'Option Three', checked: false },
  ];
</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 43</h3>
    <span class="rounded-full bg-orange-100 px-2.5 py-0.5 text-xs font-medium text-orange-700">
      Checkbox
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #43 demonstrating the Checkbox primitive from bits-ui with Tailwind CSS.
  </p>
  <div class="flex flex-col gap-3">
  {#each options as option}
    <label class="flex cursor-pointer items-center gap-3">
      <Checkbox.Root
        checked={option.checked}
        class="flex h-5 w-5 items-center justify-center rounded border-2 border-neutral-300 bg-white data-[state=checked]:border-blue-600 data-[state=checked]:bg-blue-600"
      >
        {#snippet children({ checked })}
          {#if checked}<span class="text-xs text-white">✓</span>{/if}
        {/snippet}
      </Checkbox.Root>
      <span class="text-sm text-neutral-700">{option.label}</span>
    </label>
  {/each}
</div>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-orange-400"></span>
    <span>ID: 043</span>
  </div>
</div>
