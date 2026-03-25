<svelte:head>
	<title>Reproduction Index — Build Timeout</title>
	<meta name="description" content="Index of all 1000 reproduction routes for sveltejs/kit#15554" />
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
				<strong>1000 separate routes</strong>, each using multiple bits-ui primitives simultaneously.
				There are also <strong>300 shared components</strong>.
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
					1000 routes · 300 components
				</span>
			</div>
			<div class="rounded-xl border border-amber-200 bg-amber-50 px-5 py-4 text-sm text-amber-800">
				<strong class="font-semibold">Build fingerprint:</strong>
				<code class="rounded bg-amber-100 px-1.5 py-0.5 font-mono">vite-plugin-sveltekit-guard</code>
				consumes ~80% of total build time and hangs indefinitely on constrained Linux environments (Docker, CI).
				Each route uses 4-5 bits-ui primitives simultaneously.
			</div>
		</header>

		<section>
			<h2 class="mb-4 text-xl font-semibold text-neutral-900">Routes (1000 total)</h2>
			<div class="grid grid-cols-4 gap-2 sm:grid-cols-6 md:grid-cols-8 lg:grid-cols-10 xl:grid-cols-12">
				<a href="/page-001" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">001</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-002" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">002</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-003" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">003</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-004" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">004</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-005" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">005</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-006" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">006</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-007" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">007</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-008" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">008</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-009" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">009</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-010" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">010</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-011" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">011</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-012" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">012</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-013" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">013</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-014" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">014</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-015" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">015</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-016" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">016</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-017" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">017</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-018" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">018</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-019" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">019</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-020" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">020</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-021" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">021</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-022" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">022</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-023" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">023</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-024" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">024</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-025" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">025</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-026" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">026</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-027" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">027</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-028" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">028</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-029" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">029</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-030" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">030</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-031" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">031</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-032" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">032</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-033" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">033</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-034" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">034</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-035" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">035</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-036" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">036</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-037" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">037</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-038" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">038</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-039" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">039</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-040" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">040</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-041" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">041</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-042" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">042</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-043" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">043</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-044" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">044</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-045" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">045</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-046" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">046</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-047" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">047</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-048" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">048</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-049" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">049</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-050" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">050</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-051" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">051</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-052" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">052</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-053" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">053</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-054" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">054</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-055" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">055</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-056" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">056</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-057" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">057</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-058" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">058</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-059" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">059</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-060" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">060</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-061" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">061</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-062" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">062</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-063" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">063</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-064" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">064</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-065" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">065</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-066" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">066</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-067" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">067</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-068" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">068</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-069" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">069</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-070" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">070</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-071" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">071</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-072" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">072</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-073" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">073</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-074" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">074</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-075" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">075</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-076" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">076</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-077" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">077</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-078" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">078</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-079" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">079</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-080" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">080</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-081" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">081</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-082" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">082</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-083" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">083</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-084" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">084</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-085" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">085</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-086" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">086</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-087" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">087</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-088" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">088</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-089" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">089</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-090" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">090</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-091" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">091</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-092" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">092</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-093" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">093</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-094" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">094</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-095" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">095</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-096" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">096</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-097" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">097</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-098" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">098</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-099" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">099</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-100" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">100</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">101</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-102" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">102</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-103" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">103</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-104" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">104</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-105" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">105</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-106" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">106</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-107" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">107</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-108" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">108</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-109" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">109</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-110" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">110</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-111" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">111</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-112" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">112</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-113" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">113</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-114" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">114</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-115" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">115</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-116" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">116</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-117" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">117</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-118" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">118</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-119" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">119</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-120" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">120</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-121" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">121</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-122" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">122</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-123" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">123</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-124" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">124</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-125" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">125</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-126" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">126</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-127" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">127</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-128" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">128</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-129" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">129</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-130" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">130</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-131" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">131</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-132" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">132</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-133" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">133</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-134" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">134</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-135" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">135</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-136" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">136</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-137" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">137</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-138" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">138</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-139" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">139</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-140" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">140</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-141" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">141</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-142" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">142</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-143" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">143</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-144" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">144</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-145" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">145</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-146" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">146</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-147" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">147</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-148" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">148</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-149" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">149</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-150" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">150</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-151" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">151</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-152" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">152</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-153" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">153</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-154" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">154</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-155" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">155</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-156" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">156</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-157" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">157</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-158" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">158</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-159" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">159</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-160" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">160</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-161" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">161</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-162" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">162</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-163" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">163</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-164" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">164</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-165" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">165</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-166" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">166</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-167" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">167</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-168" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">168</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-169" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">169</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-170" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">170</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-171" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">171</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-172" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">172</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-173" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">173</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-174" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">174</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-175" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">175</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-176" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">176</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-177" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">177</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-178" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">178</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-179" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">179</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-180" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">180</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-181" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">181</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-182" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">182</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-183" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">183</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-184" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">184</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-185" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">185</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-186" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">186</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-187" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">187</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-188" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">188</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-189" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">189</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-190" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">190</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-191" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">191</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-192" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">192</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-193" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">193</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-194" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">194</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-195" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">195</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-196" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">196</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-197" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">197</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-198" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">198</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-199" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">199</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-200" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">200</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">201</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-202" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">202</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-203" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">203</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-204" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">204</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-205" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">205</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-206" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">206</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-207" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">207</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-208" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">208</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-209" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">209</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-210" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">210</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-211" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">211</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-212" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">212</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-213" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">213</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-214" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">214</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-215" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">215</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-216" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">216</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-217" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">217</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-218" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">218</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-219" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">219</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-220" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">220</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-221" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">221</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-222" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">222</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-223" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">223</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-224" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">224</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-225" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">225</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-226" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">226</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-227" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">227</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-228" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">228</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-229" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">229</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-230" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">230</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-231" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">231</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-232" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">232</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-233" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">233</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-234" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">234</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-235" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">235</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-236" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">236</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-237" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">237</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-238" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">238</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-239" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">239</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-240" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">240</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-241" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">241</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-242" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">242</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-243" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">243</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-244" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">244</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-245" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">245</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-246" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">246</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-247" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">247</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-248" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">248</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-249" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">249</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-250" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">250</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-251" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">251</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-252" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">252</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-253" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">253</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-254" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">254</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-255" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">255</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-256" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">256</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-257" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">257</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-258" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">258</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-259" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">259</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-260" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">260</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-261" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">261</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-262" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">262</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-263" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">263</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-264" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">264</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-265" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">265</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-266" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">266</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-267" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">267</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-268" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">268</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-269" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">269</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-270" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">270</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-271" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">271</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-272" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">272</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-273" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">273</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-274" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">274</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-275" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">275</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-276" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">276</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-277" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">277</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-278" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">278</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-279" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">279</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-280" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">280</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-281" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">281</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-282" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">282</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-283" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">283</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-284" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">284</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-285" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">285</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-286" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">286</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-287" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">287</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-288" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">288</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-289" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">289</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-290" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">290</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-291" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">291</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-292" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">292</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-293" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">293</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-294" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">294</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-295" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">295</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-296" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">296</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-297" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">297</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-298" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">298</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-299" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">299</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-300" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">300</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">301</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-302" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">302</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-303" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">303</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-304" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">304</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-305" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">305</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-306" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">306</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-307" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">307</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-308" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">308</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-309" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">309</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-310" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">310</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-311" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">311</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-312" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">312</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-313" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">313</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-314" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">314</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-315" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">315</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-316" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">316</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-317" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">317</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-318" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">318</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-319" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">319</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-320" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">320</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-321" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">321</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-322" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">322</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-323" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">323</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-324" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">324</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-325" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">325</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-326" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">326</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-327" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">327</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-328" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">328</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-329" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">329</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-330" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">330</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-331" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">331</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-332" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">332</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-333" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">333</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-334" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">334</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-335" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">335</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-336" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">336</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-337" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">337</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-338" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">338</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-339" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">339</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-340" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">340</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-341" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">341</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-342" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">342</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-343" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">343</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-344" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">344</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-345" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">345</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-346" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">346</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-347" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">347</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-348" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">348</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-349" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">349</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-350" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">350</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-351" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">351</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-352" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">352</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-353" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">353</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-354" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">354</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-355" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">355</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-356" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">356</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-357" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">357</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-358" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">358</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-359" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">359</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-360" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">360</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-361" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">361</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-362" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">362</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-363" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">363</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-364" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">364</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-365" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">365</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-366" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">366</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-367" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">367</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-368" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">368</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-369" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">369</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-370" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">370</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-371" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">371</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-372" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">372</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-373" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">373</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-374" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">374</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-375" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">375</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-376" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">376</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-377" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">377</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-378" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">378</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-379" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">379</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-380" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">380</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-381" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">381</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-382" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">382</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-383" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">383</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-384" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">384</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-385" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">385</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-386" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">386</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-387" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">387</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-388" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">388</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-389" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">389</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-390" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">390</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-391" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">391</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-392" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">392</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-393" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">393</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-394" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">394</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-395" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">395</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-396" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">396</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-397" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">397</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-398" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">398</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-399" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">399</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-400" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">400</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">401</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-402" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">402</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-403" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">403</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-404" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">404</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-405" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">405</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-406" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">406</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-407" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">407</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-408" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">408</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-409" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">409</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-410" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">410</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-411" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">411</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-412" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">412</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-413" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">413</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-414" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">414</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-415" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">415</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-416" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">416</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-417" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">417</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-418" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">418</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-419" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">419</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-420" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">420</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-421" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">421</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-422" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">422</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-423" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">423</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-424" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">424</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-425" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">425</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-426" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">426</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-427" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">427</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-428" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">428</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-429" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">429</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-430" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">430</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-431" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">431</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-432" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">432</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-433" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">433</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-434" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">434</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-435" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">435</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-436" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">436</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-437" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">437</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-438" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">438</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-439" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">439</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-440" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">440</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-441" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">441</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-442" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">442</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-443" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">443</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-444" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">444</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-445" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">445</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-446" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">446</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-447" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">447</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-448" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">448</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-449" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">449</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-450" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">450</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-451" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">451</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-452" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">452</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-453" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">453</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-454" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">454</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-455" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">455</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-456" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">456</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-457" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">457</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-458" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">458</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-459" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">459</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-460" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">460</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-461" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">461</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-462" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">462</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-463" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">463</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-464" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">464</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-465" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">465</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-466" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">466</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-467" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">467</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-468" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">468</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-469" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">469</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-470" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">470</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-471" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">471</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-472" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">472</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-473" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">473</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-474" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">474</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-475" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">475</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-476" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">476</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-477" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">477</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-478" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">478</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-479" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">479</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-480" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">480</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-481" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">481</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-482" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">482</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-483" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">483</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-484" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">484</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-485" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">485</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-486" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">486</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-487" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">487</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-488" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">488</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-489" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">489</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-490" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">490</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-491" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">491</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-492" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">492</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-493" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">493</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-494" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">494</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-495" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">495</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-496" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">496</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-497" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">497</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-498" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">498</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-499" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">499</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-500" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">500</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">501</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-502" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">502</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-503" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">503</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-504" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">504</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-505" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">505</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-506" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">506</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-507" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">507</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-508" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">508</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-509" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">509</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-510" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">510</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-511" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">511</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-512" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">512</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-513" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">513</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-514" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">514</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-515" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">515</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-516" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">516</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-517" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">517</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-518" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">518</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-519" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">519</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-520" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">520</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-521" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">521</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-522" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">522</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-523" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">523</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-524" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">524</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-525" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">525</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-526" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">526</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-527" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">527</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-528" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">528</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-529" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">529</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-530" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">530</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-531" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">531</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-532" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">532</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-533" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">533</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-534" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">534</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-535" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">535</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-536" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">536</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-537" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">537</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-538" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">538</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-539" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">539</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-540" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">540</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-541" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">541</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-542" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">542</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-543" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">543</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-544" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">544</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-545" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">545</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-546" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">546</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-547" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">547</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-548" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">548</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-549" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">549</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-550" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">550</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-551" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">551</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-552" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">552</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-553" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">553</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-554" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">554</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-555" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">555</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-556" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">556</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-557" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">557</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-558" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">558</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-559" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">559</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-560" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">560</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-561" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">561</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-562" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">562</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-563" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">563</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-564" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">564</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-565" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">565</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-566" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">566</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-567" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">567</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-568" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">568</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-569" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">569</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-570" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">570</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-571" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">571</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-572" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">572</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-573" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">573</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-574" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">574</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-575" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">575</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-576" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">576</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-577" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">577</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-578" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">578</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-579" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">579</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-580" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">580</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-581" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">581</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-582" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">582</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-583" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">583</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-584" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">584</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-585" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">585</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-586" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">586</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-587" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">587</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-588" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">588</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-589" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">589</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-590" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">590</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-591" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">591</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-592" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">592</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-593" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">593</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-594" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">594</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-595" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">595</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-596" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">596</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-597" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">597</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-598" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">598</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-599" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">599</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-600" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">600</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">601</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-602" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">602</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-603" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">603</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-604" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">604</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-605" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">605</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-606" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">606</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-607" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">607</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-608" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">608</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-609" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">609</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-610" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">610</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-611" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">611</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-612" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">612</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-613" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">613</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-614" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">614</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-615" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">615</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-616" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">616</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-617" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">617</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-618" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">618</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-619" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">619</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-620" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">620</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-621" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">621</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-622" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">622</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-623" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">623</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-624" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">624</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-625" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">625</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-626" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">626</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-627" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">627</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-628" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">628</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-629" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">629</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-630" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">630</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-631" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">631</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-632" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">632</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-633" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">633</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-634" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">634</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-635" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">635</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-636" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">636</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-637" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">637</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-638" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">638</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-639" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">639</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-640" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">640</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-641" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">641</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-642" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">642</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-643" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">643</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-644" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">644</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-645" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">645</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-646" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">646</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-647" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">647</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-648" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">648</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-649" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">649</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-650" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">650</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-651" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">651</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-652" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">652</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-653" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">653</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-654" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">654</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-655" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">655</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-656" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">656</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-657" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">657</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-658" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">658</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-659" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">659</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-660" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">660</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-661" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">661</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-662" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">662</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-663" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">663</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-664" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">664</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-665" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">665</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-666" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">666</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-667" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">667</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-668" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">668</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-669" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">669</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-670" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">670</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-671" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">671</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-672" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">672</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-673" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">673</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-674" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">674</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-675" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">675</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-676" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">676</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-677" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">677</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-678" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">678</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-679" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">679</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-680" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">680</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-681" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">681</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-682" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">682</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-683" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">683</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-684" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">684</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-685" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">685</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-686" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">686</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-687" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">687</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-688" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">688</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-689" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">689</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-690" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">690</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-691" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">691</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-692" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">692</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-693" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">693</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-694" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">694</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-695" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">695</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-696" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">696</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-697" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">697</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-698" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">698</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-699" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">699</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-700" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">700</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">701</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-702" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">702</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-703" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">703</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-704" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">704</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-705" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">705</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-706" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">706</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-707" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">707</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-708" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">708</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-709" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">709</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-710" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">710</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-711" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">711</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-712" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">712</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-713" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">713</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-714" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">714</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-715" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">715</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-716" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">716</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-717" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">717</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-718" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">718</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-719" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">719</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-720" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">720</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-721" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">721</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-722" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">722</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-723" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">723</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-724" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">724</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-725" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">725</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-726" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">726</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-727" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">727</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-728" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">728</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-729" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">729</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-730" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">730</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-731" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">731</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-732" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">732</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-733" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">733</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-734" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">734</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-735" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">735</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-736" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">736</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-737" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">737</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-738" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">738</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-739" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">739</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-740" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">740</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-741" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">741</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-742" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">742</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-743" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">743</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-744" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">744</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-745" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">745</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-746" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">746</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-747" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">747</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-748" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">748</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-749" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">749</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-750" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">750</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-751" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">751</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-752" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">752</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-753" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">753</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-754" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">754</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-755" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">755</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-756" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">756</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-757" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">757</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-758" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">758</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-759" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">759</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-760" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">760</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-761" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">761</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-762" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">762</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-763" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">763</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-764" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">764</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-765" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">765</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-766" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">766</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-767" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">767</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-768" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">768</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-769" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">769</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-770" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">770</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-771" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">771</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-772" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">772</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-773" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">773</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-774" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">774</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-775" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">775</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-776" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">776</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-777" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">777</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-778" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">778</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-779" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">779</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-780" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">780</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-781" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">781</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-782" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">782</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-783" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">783</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-784" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">784</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-785" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">785</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-786" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">786</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-787" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">787</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-788" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">788</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-789" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">789</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-790" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">790</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-791" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">791</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-792" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">792</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-793" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">793</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-794" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">794</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-795" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">795</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-796" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">796</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-797" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">797</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-798" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">798</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-799" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">799</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-800" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">800</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">801</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-802" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">802</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-803" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">803</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-804" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">804</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-805" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">805</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-806" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">806</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-807" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">807</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-808" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">808</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-809" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">809</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-810" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">810</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-811" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">811</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-812" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">812</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-813" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">813</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-814" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">814</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-815" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">815</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-816" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">816</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-817" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">817</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-818" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">818</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-819" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">819</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-820" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">820</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-821" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">821</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-822" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">822</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-823" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">823</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-824" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">824</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-825" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">825</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-826" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">826</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-827" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">827</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-828" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">828</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-829" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">829</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-830" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">830</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-831" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">831</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-832" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">832</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-833" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">833</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-834" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">834</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-835" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">835</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-836" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">836</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-837" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">837</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-838" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">838</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-839" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">839</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-840" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">840</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-841" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">841</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-842" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">842</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-843" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">843</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-844" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">844</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-845" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">845</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-846" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">846</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-847" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">847</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-848" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">848</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-849" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">849</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-850" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">850</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-851" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">851</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-852" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">852</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-853" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">853</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-854" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">854</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-855" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">855</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-856" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">856</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-857" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">857</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-858" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">858</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-859" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">859</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-860" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">860</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-861" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">861</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-862" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">862</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-863" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">863</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-864" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">864</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-865" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">865</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-866" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">866</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-867" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">867</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-868" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">868</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-869" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">869</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-870" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">870</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-871" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">871</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-872" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">872</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-873" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">873</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-874" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">874</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-875" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">875</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-876" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">876</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-877" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">877</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-878" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">878</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-879" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">879</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-880" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">880</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-881" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">881</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-882" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">882</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-883" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">883</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-884" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">884</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-885" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">885</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-886" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">886</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-887" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">887</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-888" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">888</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-889" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">889</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-890" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">890</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-891" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">891</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-892" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">892</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-893" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">893</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-894" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">894</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-895" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">895</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-896" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">896</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-897" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">897</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-898" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">898</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-899" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">899</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-900" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">900</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">901</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-902" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">902</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-903" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">903</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-904" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">904</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-905" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">905</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-906" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">906</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-907" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">907</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-908" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">908</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-909" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">909</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-910" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">910</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-911" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">911</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-912" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">912</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-913" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">913</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-914" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">914</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-915" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">915</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-916" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">916</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-917" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">917</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-918" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">918</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-919" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">919</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-920" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">920</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-921" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">921</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-922" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">922</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-923" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">923</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-924" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">924</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-925" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">925</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-926" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">926</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-927" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">927</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-928" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">928</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-929" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">929</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-930" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">930</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-931" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">931</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-932" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">932</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-933" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">933</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-934" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">934</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-935" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">935</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-936" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">936</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-937" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">937</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-938" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">938</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-939" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">939</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-940" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">940</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-941" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">941</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-942" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">942</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-943" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">943</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-944" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">944</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-945" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">945</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-946" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">946</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-947" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">947</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-948" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">948</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-949" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">949</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-950" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">950</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-951" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">951</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-952" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">952</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-953" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">953</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-954" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">954</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-955" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">955</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-956" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">956</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-957" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">957</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-958" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">958</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-959" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">959</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-960" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">960</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-961" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">961</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-962" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">962</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-963" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">963</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-964" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">964</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-965" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">965</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-966" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">966</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-967" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">967</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-968" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">968</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-969" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">969</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-970" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">970</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-971" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">971</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-972" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">972</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-973" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">973</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-974" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">974</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-975" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">975</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-976" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">976</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-977" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">977</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-978" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">978</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-979" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">979</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-980" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">980</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-981" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">981</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-982" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">982</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-983" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">983</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-984" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">984</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-985" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">985</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-986" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">986</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-987" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">987</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-988" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">988</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-989" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">989</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-990" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">990</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-991" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">991</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-992" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">992</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-993" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">993</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-994" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">994</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-995" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">995</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
				<a href="/page-996" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">996</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Analytics Suite</span>
				</a>
				<a href="/page-997" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">997</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Config Center</span>
				</a>
				<a href="/page-998" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">998</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Team Workspace</span>
				</a>
				<a href="/page-999" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">999</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Monitor Board</span>
				</a>
				<a href="/page-1000" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-2.5 shadow-sm hover:shadow-md hover:border-blue-300 transition-all">
					<span class="text-xs font-mono text-neutral-400">1000</span>
					<span class="truncate text-xs font-medium text-neutral-700 group-hover:text-blue-600">Knowledge Base</span>
				</a>
			</div>
		</section>

	</div>
</div>
