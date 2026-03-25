<script lang="ts">
  import { Switch, Checkbox, Button } from 'bits-ui';
  let toggles = $state({ featureA: true, featureB: false, featureC: true });
  let checks = $state({ optA: true, optB: false, optC: false, optD: true });
</script>

<div class="flex flex-col gap-3 rounded-2xl border border-neutral-100 bg-white p-5 shadow-sm transition-shadow hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-sm font-semibold text-neutral-900">Component 157</h3>
    <span class="rounded-full bg-indigo-100 px-2 py-0.5 text-xs font-medium text-indigo-700">Switch, Checkbox, Button</span>
  </div>
  <p class="text-xs text-neutral-500">Component #157 — bits-ui Switch, Checkbox, Button with Tailwind CSS v4.</p>
  <div class="space-y-4">
    <div class="rounded-xl border border-neutral-200 bg-white shadow-sm divide-y divide-neutral-100">
      {#each Object.entries(toggles) as [key, _]}
        <div class="flex items-center justify-between px-4 py-3">
          <span class="text-xs font-medium text-neutral-800 capitalize">{key.replace('feature', 'Feature ')}</span>
          <Switch.Root bind:checked={toggles[key]} class="relative inline-flex h-5 w-9 rounded-full border-2 border-transparent bg-neutral-200 data-[state=checked]:bg-blue-600 cursor-pointer transition-colors">
            <Switch.Thumb class="block h-4 w-4 rounded-full bg-white shadow-md transition-transform data-[state=checked]:translate-x-4 data-[state=unchecked]:translate-x-0" />
          </Switch.Root>
        </div>
      {/each}
    </div>
    <div class="space-y-2">
      {#each Object.entries(checks) as [key, _]}
        <label class="flex cursor-pointer items-center gap-3">
          <Checkbox.Root bind:checked={checks[key]} class="flex h-4 w-4 items-center justify-center rounded border-2 border-neutral-300 bg-white data-[state=checked]:border-blue-600 data-[state=checked]:bg-blue-600">
            {#snippet children({ checked })}
              {#if checked}<svg class="h-2.5 w-2.5 text-white" viewBox="0 0 12 12" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M2 6l3 3 5-5"/></svg>{/if}
            {/snippet}
          </Checkbox.Root>
          <span class="text-xs text-neutral-700 capitalize">{key.replace('opt', 'Option ')}</span>
        </label>
      {/each}
    </div>
    <div class="flex gap-2">
      <Button.Root class="flex-1 rounded-lg bg-blue-600 py-2 text-xs font-semibold text-white hover:bg-blue-700 transition-colors">Apply</Button.Root>
      <Button.Root class="flex-1 rounded-lg border border-neutral-300 bg-white py-2 text-xs font-semibold text-neutral-700 hover:bg-neutral-50 transition-colors">Reset</Button.Root>
    </div>
  </div>
  <div class="mt-1 flex items-center gap-1.5 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-indigo-400"></span>
    <span>ID: 157</span>
  </div>
</div>
