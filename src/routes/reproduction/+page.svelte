<svelte:head>
	<title>Reproduction Index — Build Timeout</title>
	<meta name="description" content="Index of all 100 reproduction routes for sveltejs/kit#15554" />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
	<div class="mx-auto max-w-7xl space-y-8">

		<header class="space-y-3">
			<h1 class="text-4xl font-bold tracking-tight text-neutral-900">
				Build Timeout Reproduction
			</h1>
			<p class="max-w-2xl text-lg text-neutral-600">
				Reproducing <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>
				— SvelteKit build hang with Vite 8 + bits-ui + Tailwind. This index links to
				<strong>100 separate routes</strong>, each using a different bits-ui primitive.
			</p>
			<div class="flex flex-wrap gap-3 text-sm">
				<span class="inline-flex items-center gap-1.5 rounded-full bg-blue-50 px-3 py-1 font-medium text-blue-700 ring-1 ring-blue-200">
					<span class="h-1.5 w-1.5 rounded-full bg-blue-500"></span>
					Vite 8 + rolldown
				</span>
				<span class="inline-flex items-center gap-1.5 rounded-full bg-violet-50 px-3 py-1 font-medium text-violet-700 ring-1 ring-violet-200">
					<span class="h-1.5 w-1.5 rounded-full bg-violet-500"></span>
					bits-ui v2
				</span>
				<span class="inline-flex items-center gap-1.5 rounded-full bg-emerald-50 px-3 py-1 font-medium text-emerald-700 ring-1 ring-emerald-200">
					<span class="h-1.5 w-1.5 rounded-full bg-emerald-500"></span>
					Tailwind CSS v4
				</span>
				<span class="inline-flex items-center gap-1.5 rounded-full bg-amber-50 px-3 py-1 font-medium text-amber-700 ring-1 ring-amber-200">
					<span class="h-1.5 w-1.5 rounded-full bg-amber-500"></span>
					100 routes
				</span>
			</div>
			<div class="rounded-xl border border-amber-200 bg-amber-50 px-5 py-4 text-sm text-amber-800">
				<strong class="font-semibold">Build fingerprint:</strong> <code class="rounded bg-amber-100 px-1.5 py-0.5 font-mono">vite-plugin-sveltekit-guard</code>
				consumes ~80% of total build time. On constrained Linux environments (Docker, CI) this becomes an indefinite hang.
			</div>
		</header>

		<section>
			<h2 class="mb-4 text-xl font-semibold text-neutral-900">Routes (100 total)</h2>
			<div class="grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5">
			<a href="/page-001" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-001</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Accordion Page</span>
			</a>
			<a href="/page-002" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-002</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Button Page</span>
			</a>
			<a href="/page-003" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-003</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Checkbox Page</span>
			</a>
			<a href="/page-004" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-004</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Progress Page</span>
			</a>
			<a href="/page-005" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-005</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Switch Page</span>
			</a>
			<a href="/page-006" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-006</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Tabs Page</span>
			</a>
			<a href="/page-007" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-007</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Collapsible Page</span>
			</a>
			<a href="/page-008" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-008</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Avatar Page</span>
			</a>
			<a href="/page-009" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-009</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Slider Page</span>
			</a>
			<a href="/page-010" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-010</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Separator Page</span>
			</a>
			<a href="/page-011" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-011</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Accordion Page</span>
			</a>
			<a href="/page-012" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-012</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Button Page</span>
			</a>
			<a href="/page-013" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-013</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Checkbox Page</span>
			</a>
			<a href="/page-014" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-014</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Progress Page</span>
			</a>
			<a href="/page-015" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-015</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Switch Page</span>
			</a>
			<a href="/page-016" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-016</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Tabs Page</span>
			</a>
			<a href="/page-017" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-017</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Collapsible Page</span>
			</a>
			<a href="/page-018" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-018</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Avatar Page</span>
			</a>
			<a href="/page-019" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-019</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Slider Page</span>
			</a>
			<a href="/page-020" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-020</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Separator Page</span>
			</a>
			<a href="/page-021" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-021</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Accordion Page</span>
			</a>
			<a href="/page-022" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-022</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Button Page</span>
			</a>
			<a href="/page-023" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-023</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Checkbox Page</span>
			</a>
			<a href="/page-024" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-024</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Progress Page</span>
			</a>
			<a href="/page-025" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-025</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Switch Page</span>
			</a>
			<a href="/page-026" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-026</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Tabs Page</span>
			</a>
			<a href="/page-027" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-027</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Collapsible Page</span>
			</a>
			<a href="/page-028" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-028</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Avatar Page</span>
			</a>
			<a href="/page-029" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-029</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Slider Page</span>
			</a>
			<a href="/page-030" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-030</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Separator Page</span>
			</a>
			<a href="/page-031" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-031</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Accordion Page</span>
			</a>
			<a href="/page-032" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-032</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Button Page</span>
			</a>
			<a href="/page-033" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-033</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Checkbox Page</span>
			</a>
			<a href="/page-034" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-034</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Progress Page</span>
			</a>
			<a href="/page-035" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-035</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Switch Page</span>
			</a>
			<a href="/page-036" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-036</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Tabs Page</span>
			</a>
			<a href="/page-037" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-037</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Collapsible Page</span>
			</a>
			<a href="/page-038" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-038</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Avatar Page</span>
			</a>
			<a href="/page-039" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-039</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Slider Page</span>
			</a>
			<a href="/page-040" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-040</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Separator Page</span>
			</a>
			<a href="/page-041" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-041</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Accordion Page</span>
			</a>
			<a href="/page-042" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-042</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Button Page</span>
			</a>
			<a href="/page-043" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-043</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Checkbox Page</span>
			</a>
			<a href="/page-044" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-044</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Progress Page</span>
			</a>
			<a href="/page-045" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-045</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Switch Page</span>
			</a>
			<a href="/page-046" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-046</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Tabs Page</span>
			</a>
			<a href="/page-047" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-047</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Collapsible Page</span>
			</a>
			<a href="/page-048" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-048</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Avatar Page</span>
			</a>
			<a href="/page-049" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-049</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Slider Page</span>
			</a>
			<a href="/page-050" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-050</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Separator Page</span>
			</a>
			<a href="/page-051" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-051</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Accordion Page</span>
			</a>
			<a href="/page-052" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-052</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Button Page</span>
			</a>
			<a href="/page-053" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-053</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Checkbox Page</span>
			</a>
			<a href="/page-054" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-054</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Progress Page</span>
			</a>
			<a href="/page-055" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-055</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Switch Page</span>
			</a>
			<a href="/page-056" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-056</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Tabs Page</span>
			</a>
			<a href="/page-057" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-057</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Collapsible Page</span>
			</a>
			<a href="/page-058" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-058</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Avatar Page</span>
			</a>
			<a href="/page-059" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-059</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Slider Page</span>
			</a>
			<a href="/page-060" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-060</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Separator Page</span>
			</a>
			<a href="/page-061" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-061</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Accordion Page</span>
			</a>
			<a href="/page-062" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-062</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Button Page</span>
			</a>
			<a href="/page-063" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-063</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Checkbox Page</span>
			</a>
			<a href="/page-064" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-064</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Progress Page</span>
			</a>
			<a href="/page-065" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-065</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Switch Page</span>
			</a>
			<a href="/page-066" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-066</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Tabs Page</span>
			</a>
			<a href="/page-067" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-067</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Collapsible Page</span>
			</a>
			<a href="/page-068" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-068</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Avatar Page</span>
			</a>
			<a href="/page-069" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-069</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Slider Page</span>
			</a>
			<a href="/page-070" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-070</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Separator Page</span>
			</a>
			<a href="/page-071" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-071</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Accordion Page</span>
			</a>
			<a href="/page-072" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-072</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Button Page</span>
			</a>
			<a href="/page-073" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-073</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Checkbox Page</span>
			</a>
			<a href="/page-074" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-074</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Progress Page</span>
			</a>
			<a href="/page-075" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-075</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Switch Page</span>
			</a>
			<a href="/page-076" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-076</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Tabs Page</span>
			</a>
			<a href="/page-077" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-077</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Collapsible Page</span>
			</a>
			<a href="/page-078" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-078</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Avatar Page</span>
			</a>
			<a href="/page-079" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-079</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Slider Page</span>
			</a>
			<a href="/page-080" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-080</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Separator Page</span>
			</a>
			<a href="/page-081" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-081</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Accordion Page</span>
			</a>
			<a href="/page-082" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-082</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Button Page</span>
			</a>
			<a href="/page-083" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-083</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Checkbox Page</span>
			</a>
			<a href="/page-084" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-084</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Progress Page</span>
			</a>
			<a href="/page-085" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-085</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Switch Page</span>
			</a>
			<a href="/page-086" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-086</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Tabs Page</span>
			</a>
			<a href="/page-087" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-087</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Collapsible Page</span>
			</a>
			<a href="/page-088" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-088</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Avatar Page</span>
			</a>
			<a href="/page-089" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-089</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Slider Page</span>
			</a>
			<a href="/page-090" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-090</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Separator Page</span>
			</a>
			<a href="/page-091" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-091</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Accordion Page</span>
			</a>
			<a href="/page-092" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-092</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Button Page</span>
			</a>
			<a href="/page-093" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-093</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Checkbox Page</span>
			</a>
			<a href="/page-094" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-094</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Progress Page</span>
			</a>
			<a href="/page-095" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-095</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Switch Page</span>
			</a>
			<a href="/page-096" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-096</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Tabs Page</span>
			</a>
			<a href="/page-097" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-097</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Collapsible Page</span>
			</a>
			<a href="/page-098" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-098</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Avatar Page</span>
			</a>
			<a href="/page-099" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-099</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Slider Page</span>
			</a>
			<a href="/page-100" class="group flex flex-col gap-1 rounded-xl border border-neutral-200 bg-white p-4 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
				<span class="text-xs font-mono text-neutral-400">page-100</span>
				<span class="text-sm font-semibold text-neutral-900 group-hover:text-blue-600">Separator Page</span>
			</a>
			</div>
		</section>

	</div>
</div>
