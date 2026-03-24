<script lang="ts">
  import { Avatar } from 'bits-ui';

  let users = [
    { name: 'Alice', initials: 'AL', src: '' },
    { name: 'Bob', initials: 'BO', src: '' },
    { name: 'Charlie', initials: 'CH', src: '' },
    { name: 'Diana', initials: 'DI', src: '' },
  ];
</script>

<div class="flex flex-col gap-4 rounded-2xl border border-neutral-100 bg-white p-6 shadow-sm transition-shadow duration-200 hover:shadow-md">
  <div class="flex items-center justify-between">
    <h3 class="text-base font-semibold text-neutral-900">Component 39</h3>
    <span class="rounded-full bg-red-100 px-2.5 py-0.5 text-xs font-medium text-red-700">
      Avatar
    </span>
  </div>
  <p class="text-sm text-neutral-500">
    Unique component #39 demonstrating the Avatar primitive from bits-ui with Tailwind CSS.
  </p>
  <div class="flex items-center gap-4">
  {#each users as user}
    <div class="flex flex-col items-center gap-1">
      <Avatar.Root class="h-12 w-12 overflow-hidden rounded-full">
        <Avatar.Image src={user.src} alt={user.name} class="h-full w-full object-cover" />
        <Avatar.Fallback class="flex h-full w-full items-center justify-center bg-neutral-200 text-sm font-medium text-neutral-600">
          {user.initials}
        </Avatar.Fallback>
      </Avatar.Root>
      <span class="text-xs text-neutral-600">{user.name}</span>
    </div>
  {/each}
</div>
  <div class="mt-2 flex items-center gap-2 text-xs text-neutral-400">
    <span class="h-1.5 w-1.5 rounded-full bg-red-400"></span>
    <span>ID: 039</span>
  </div>
</div>
