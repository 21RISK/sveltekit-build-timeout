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
    <h3 class="text-base font-semibold text-neutral-900">Component 66</h3>
    <span class="rounded-full bg-purple-100 px-2.5 py-0.5 text-xs font-medium text-purple-700">
      Switch
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #66 demonstrating the Switch primitive from bits-ui with Tailwind CSS.
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
    <span class="h-1.5 w-1.5 rounded-full bg-purple-400"></span>
    <span>ID: 066</span>
  </div>
</div>
