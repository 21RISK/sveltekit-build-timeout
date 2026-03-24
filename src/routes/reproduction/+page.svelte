<script lang="ts">
	import Component001 from '$lib/components/Component001.svelte';
	import Component002 from '$lib/components/Component002.svelte';
	import Component003 from '$lib/components/Component003.svelte';
	import Component004 from '$lib/components/Component004.svelte';
	import Component005 from '$lib/components/Component005.svelte';
	import Component006 from '$lib/components/Component006.svelte';
	import Component007 from '$lib/components/Component007.svelte';
	import Component008 from '$lib/components/Component008.svelte';
	import Component009 from '$lib/components/Component009.svelte';
	import Component010 from '$lib/components/Component010.svelte';
	import Component011 from '$lib/components/Component011.svelte';
	import Component012 from '$lib/components/Component012.svelte';
	import Component013 from '$lib/components/Component013.svelte';
	import Component014 from '$lib/components/Component014.svelte';
	import Component015 from '$lib/components/Component015.svelte';
	import Component016 from '$lib/components/Component016.svelte';
	import Component017 from '$lib/components/Component017.svelte';
	import Component018 from '$lib/components/Component018.svelte';
	import Component019 from '$lib/components/Component019.svelte';
	import Component020 from '$lib/components/Component020.svelte';
	import Component021 from '$lib/components/Component021.svelte';
	import Component022 from '$lib/components/Component022.svelte';
	import Component023 from '$lib/components/Component023.svelte';
	import Component024 from '$lib/components/Component024.svelte';
	import Component025 from '$lib/components/Component025.svelte';
	import Component026 from '$lib/components/Component026.svelte';
	import Component027 from '$lib/components/Component027.svelte';
	import Component028 from '$lib/components/Component028.svelte';
	import Component029 from '$lib/components/Component029.svelte';
	import Component030 from '$lib/components/Component030.svelte';
	import Component031 from '$lib/components/Component031.svelte';
	import Component032 from '$lib/components/Component032.svelte';
	import Component033 from '$lib/components/Component033.svelte';
	import Component034 from '$lib/components/Component034.svelte';
	import Component035 from '$lib/components/Component035.svelte';
	import Component036 from '$lib/components/Component036.svelte';
	import Component037 from '$lib/components/Component037.svelte';
	import Component038 from '$lib/components/Component038.svelte';
	import Component039 from '$lib/components/Component039.svelte';
	import Component040 from '$lib/components/Component040.svelte';
	import Component041 from '$lib/components/Component041.svelte';
	import Component042 from '$lib/components/Component042.svelte';
	import Component043 from '$lib/components/Component043.svelte';
	import Component044 from '$lib/components/Component044.svelte';
	import Component045 from '$lib/components/Component045.svelte';
	import Component046 from '$lib/components/Component046.svelte';
	import Component047 from '$lib/components/Component047.svelte';
	import Component048 from '$lib/components/Component048.svelte';
	import Component049 from '$lib/components/Component049.svelte';
	import Component050 from '$lib/components/Component050.svelte';
	import Component051 from '$lib/components/Component051.svelte';
	import Component052 from '$lib/components/Component052.svelte';
	import Component053 from '$lib/components/Component053.svelte';
	import Component054 from '$lib/components/Component054.svelte';
	import Component055 from '$lib/components/Component055.svelte';
	import Component056 from '$lib/components/Component056.svelte';
	import Component057 from '$lib/components/Component057.svelte';
	import Component058 from '$lib/components/Component058.svelte';
	import Component059 from '$lib/components/Component059.svelte';
	import Component060 from '$lib/components/Component060.svelte';
	import Component061 from '$lib/components/Component061.svelte';
	import Component062 from '$lib/components/Component062.svelte';
	import Component063 from '$lib/components/Component063.svelte';
	import Component064 from '$lib/components/Component064.svelte';
	import Component065 from '$lib/components/Component065.svelte';
	import Component066 from '$lib/components/Component066.svelte';
	import Component067 from '$lib/components/Component067.svelte';
	import Component068 from '$lib/components/Component068.svelte';
	import Component069 from '$lib/components/Component069.svelte';
	import Component070 from '$lib/components/Component070.svelte';
	import Component071 from '$lib/components/Component071.svelte';
	import Component072 from '$lib/components/Component072.svelte';
	import Component073 from '$lib/components/Component073.svelte';
	import Component074 from '$lib/components/Component074.svelte';
	import Component075 from '$lib/components/Component075.svelte';
	import Component076 from '$lib/components/Component076.svelte';
	import Component077 from '$lib/components/Component077.svelte';
	import Component078 from '$lib/components/Component078.svelte';
	import Component079 from '$lib/components/Component079.svelte';
	import Component080 from '$lib/components/Component080.svelte';
	import Component081 from '$lib/components/Component081.svelte';
	import Component082 from '$lib/components/Component082.svelte';
	import Component083 from '$lib/components/Component083.svelte';
	import Component084 from '$lib/components/Component084.svelte';
	import Component085 from '$lib/components/Component085.svelte';
	import Component086 from '$lib/components/Component086.svelte';
	import Component087 from '$lib/components/Component087.svelte';
	import Component088 from '$lib/components/Component088.svelte';
	import Component089 from '$lib/components/Component089.svelte';
	import Component090 from '$lib/components/Component090.svelte';
	import Component091 from '$lib/components/Component091.svelte';
	import Component092 from '$lib/components/Component092.svelte';
	import Component093 from '$lib/components/Component093.svelte';
	import Component094 from '$lib/components/Component094.svelte';
	import Component095 from '$lib/components/Component095.svelte';
	import Component096 from '$lib/components/Component096.svelte';
	import Component097 from '$lib/components/Component097.svelte';
	import Component098 from '$lib/components/Component098.svelte';
	import Component099 from '$lib/components/Component099.svelte';
	import Component100 from '$lib/components/Component100.svelte';
</script>

<svelte:head>
	<title>Build Timeout Reproduction</title>
	<meta name="description" content="Reproduction case for SvelteKit build timeout with bits-ui and Tailwind" />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
	<div class="mx-auto max-w-7xl">
		<div class="mb-10 text-center">
			<h1 class="text-4xl font-bold tracking-tight text-neutral-900">
				Build Timeout Reproduction
			</h1>
			<p class="mt-3 text-lg text-neutral-600">
				Reproducing the SvelteKit build hang with 100 bits-ui + Tailwind components.
				See: <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>
			</p>
		</div>
		<div class="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
	<Component001 />
	<Component002 />
	<Component003 />
	<Component004 />
	<Component005 />
	<Component006 />
	<Component007 />
	<Component008 />
	<Component009 />
	<Component010 />
	<Component011 />
	<Component012 />
	<Component013 />
	<Component014 />
	<Component015 />
	<Component016 />
	<Component017 />
	<Component018 />
	<Component019 />
	<Component020 />
	<Component021 />
	<Component022 />
	<Component023 />
	<Component024 />
	<Component025 />
	<Component026 />
	<Component027 />
	<Component028 />
	<Component029 />
	<Component030 />
	<Component031 />
	<Component032 />
	<Component033 />
	<Component034 />
	<Component035 />
	<Component036 />
	<Component037 />
	<Component038 />
	<Component039 />
	<Component040 />
	<Component041 />
	<Component042 />
	<Component043 />
	<Component044 />
	<Component045 />
	<Component046 />
	<Component047 />
	<Component048 />
	<Component049 />
	<Component050 />
	<Component051 />
	<Component052 />
	<Component053 />
	<Component054 />
	<Component055 />
	<Component056 />
	<Component057 />
	<Component058 />
	<Component059 />
	<Component060 />
	<Component061 />
	<Component062 />
	<Component063 />
	<Component064 />
	<Component065 />
	<Component066 />
	<Component067 />
	<Component068 />
	<Component069 />
	<Component070 />
	<Component071 />
	<Component072 />
	<Component073 />
	<Component074 />
	<Component075 />
	<Component076 />
	<Component077 />
	<Component078 />
	<Component079 />
	<Component080 />
	<Component081 />
	<Component082 />
	<Component083 />
	<Component084 />
	<Component085 />
	<Component086 />
	<Component087 />
	<Component088 />
	<Component089 />
	<Component090 />
	<Component091 />
	<Component092 />
	<Component093 />
	<Component094 />
	<Component095 />
	<Component096 />
	<Component097 />
	<Component098 />
	<Component099 />
	<Component100 />
		</div>
	</div>
</div>
