<svelte:head>
	<title>Reproduction Index — Build Timeout</title>
	<meta name="description" content="Index of all 10 000 reproduction routes for sveltejs/kit#15554" />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
	<div class="mx-auto max-w-4xl space-y-8">

		<header class="space-y-3">
			<h1 class="text-4xl font-bold tracking-tight text-neutral-900">
				Build Timeout Reproduction
			</h1>
			<p class="max-w-2xl text-lg text-neutral-600">
				Reproducing <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline">sveltejs/kit#15554</a>
				— SvelteKit build hang with Vite 8 + bits-ui + Tailwind CSS v4.
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
				<span class="inline-flex items-center gap-1.5 rounded-full bg-rose-50 px-3 py-1 font-medium text-rose-700 ring-1 ring-rose-200">
					<span class="h-1.5 w-1.5 rounded-full bg-rose-500"></span>
					10 000 routes · 1 000 components
				</span>
			</div>

			<div class="rounded-xl border border-rose-200 bg-rose-50 px-5 py-4 text-sm text-rose-800">
				<strong class="font-semibold">⚠ Build fingerprint:</strong>
				<code class="rounded bg-rose-100 px-1.5 py-0.5 font-mono">vite-plugin-sveltekit-guard</code>
				consumes ~80 % of total build time and hangs indefinitely on constrained Linux environments (Docker, CI).
				Each of the 10 000 routes imports 4–5 bits-ui primitives, maximising the guard plugin&#39;s per-route work.
			</div>
		</header>

		<section class="space-y-4">
			<h2 class="text-xl font-semibold text-neutral-900">Route Groups</h2>
			<p class="text-sm text-neutral-600">
				100 groups of 100 routes each. Click a group to jump to its first route.
			</p>

			<div class="grid grid-cols-5 gap-2 sm:grid-cols-10">
				<a href="/page-1" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1–100</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 1</span>
				</a>
				<a href="/page-101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">101–200</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 2</span>
				</a>
				<a href="/page-201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">201–300</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 3</span>
				</a>
				<a href="/page-301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">301–400</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 4</span>
				</a>
				<a href="/page-401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">401–500</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 5</span>
				</a>
				<a href="/page-501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">501–600</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 6</span>
				</a>
				<a href="/page-601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">601–700</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 7</span>
				</a>
				<a href="/page-701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">701–800</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 8</span>
				</a>
				<a href="/page-801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">801–900</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 9</span>
				</a>
				<a href="/page-901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">901–1000</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 10</span>
				</a>
				<a href="/page-1001" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1001–1100</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 11</span>
				</a>
				<a href="/page-1101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1101–1200</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 12</span>
				</a>
				<a href="/page-1201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1201–1300</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 13</span>
				</a>
				<a href="/page-1301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1301–1400</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 14</span>
				</a>
				<a href="/page-1401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1401–1500</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 15</span>
				</a>
				<a href="/page-1501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1501–1600</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 16</span>
				</a>
				<a href="/page-1601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1601–1700</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 17</span>
				</a>
				<a href="/page-1701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1701–1800</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 18</span>
				</a>
				<a href="/page-1801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1801–1900</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 19</span>
				</a>
				<a href="/page-1901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">1901–2000</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 20</span>
				</a>
				<a href="/page-2001" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">2001–2100</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 21</span>
				</a>
				<a href="/page-2101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">2101–2200</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 22</span>
				</a>
				<a href="/page-2201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">2201–2300</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 23</span>
				</a>
				<a href="/page-2301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">2301–2400</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 24</span>
				</a>
				<a href="/page-2401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">2401–2500</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 25</span>
				</a>
				<a href="/page-2501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">2501–2600</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 26</span>
				</a>
				<a href="/page-2601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">2601–2700</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 27</span>
				</a>
				<a href="/page-2701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">2701–2800</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 28</span>
				</a>
				<a href="/page-2801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">2801–2900</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 29</span>
				</a>
				<a href="/page-2901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">2901–3000</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 30</span>
				</a>
				<a href="/page-3001" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">3001–3100</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 31</span>
				</a>
				<a href="/page-3101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">3101–3200</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 32</span>
				</a>
				<a href="/page-3201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">3201–3300</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 33</span>
				</a>
				<a href="/page-3301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">3301–3400</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 34</span>
				</a>
				<a href="/page-3401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">3401–3500</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 35</span>
				</a>
				<a href="/page-3501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">3501–3600</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 36</span>
				</a>
				<a href="/page-3601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">3601–3700</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 37</span>
				</a>
				<a href="/page-3701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">3701–3800</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 38</span>
				</a>
				<a href="/page-3801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">3801–3900</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 39</span>
				</a>
				<a href="/page-3901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">3901–4000</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 40</span>
				</a>
				<a href="/page-4001" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">4001–4100</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 41</span>
				</a>
				<a href="/page-4101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">4101–4200</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 42</span>
				</a>
				<a href="/page-4201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">4201–4300</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 43</span>
				</a>
				<a href="/page-4301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">4301–4400</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 44</span>
				</a>
				<a href="/page-4401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">4401–4500</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 45</span>
				</a>
				<a href="/page-4501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">4501–4600</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 46</span>
				</a>
				<a href="/page-4601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">4601–4700</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 47</span>
				</a>
				<a href="/page-4701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">4701–4800</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 48</span>
				</a>
				<a href="/page-4801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">4801–4900</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 49</span>
				</a>
				<a href="/page-4901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">4901–5000</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 50</span>
				</a>
				<a href="/page-5001" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">5001–5100</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 51</span>
				</a>
				<a href="/page-5101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">5101–5200</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 52</span>
				</a>
				<a href="/page-5201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">5201–5300</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 53</span>
				</a>
				<a href="/page-5301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">5301–5400</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 54</span>
				</a>
				<a href="/page-5401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">5401–5500</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 55</span>
				</a>
				<a href="/page-5501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">5501–5600</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 56</span>
				</a>
				<a href="/page-5601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">5601–5700</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 57</span>
				</a>
				<a href="/page-5701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">5701–5800</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 58</span>
				</a>
				<a href="/page-5801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">5801–5900</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 59</span>
				</a>
				<a href="/page-5901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">5901–6000</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 60</span>
				</a>
				<a href="/page-6001" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">6001–6100</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 61</span>
				</a>
				<a href="/page-6101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">6101–6200</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 62</span>
				</a>
				<a href="/page-6201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">6201–6300</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 63</span>
				</a>
				<a href="/page-6301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">6301–6400</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 64</span>
				</a>
				<a href="/page-6401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">6401–6500</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 65</span>
				</a>
				<a href="/page-6501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">6501–6600</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 66</span>
				</a>
				<a href="/page-6601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">6601–6700</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 67</span>
				</a>
				<a href="/page-6701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">6701–6800</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 68</span>
				</a>
				<a href="/page-6801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">6801–6900</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 69</span>
				</a>
				<a href="/page-6901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">6901–7000</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 70</span>
				</a>
				<a href="/page-7001" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">7001–7100</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 71</span>
				</a>
				<a href="/page-7101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">7101–7200</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 72</span>
				</a>
				<a href="/page-7201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">7201–7300</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 73</span>
				</a>
				<a href="/page-7301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">7301–7400</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 74</span>
				</a>
				<a href="/page-7401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">7401–7500</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 75</span>
				</a>
				<a href="/page-7501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">7501–7600</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 76</span>
				</a>
				<a href="/page-7601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">7601–7700</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 77</span>
				</a>
				<a href="/page-7701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">7701–7800</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 78</span>
				</a>
				<a href="/page-7801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">7801–7900</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 79</span>
				</a>
				<a href="/page-7901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">7901–8000</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 80</span>
				</a>
				<a href="/page-8001" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">8001–8100</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 81</span>
				</a>
				<a href="/page-8101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">8101–8200</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 82</span>
				</a>
				<a href="/page-8201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">8201–8300</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 83</span>
				</a>
				<a href="/page-8301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">8301–8400</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 84</span>
				</a>
				<a href="/page-8401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">8401–8500</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 85</span>
				</a>
				<a href="/page-8501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">8501–8600</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 86</span>
				</a>
				<a href="/page-8601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">8601–8700</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 87</span>
				</a>
				<a href="/page-8701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">8701–8800</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 88</span>
				</a>
				<a href="/page-8801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">8801–8900</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 89</span>
				</a>
				<a href="/page-8901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">8901–9000</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 90</span>
				</a>
				<a href="/page-9001" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">9001–9100</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 91</span>
				</a>
				<a href="/page-9101" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">9101–9200</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 92</span>
				</a>
				<a href="/page-9201" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">9201–9300</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 93</span>
				</a>
				<a href="/page-9301" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">9301–9400</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 94</span>
				</a>
				<a href="/page-9401" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">9401–9500</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 95</span>
				</a>
				<a href="/page-9501" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">9501–9600</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 96</span>
				</a>
				<a href="/page-9601" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">9601–9700</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 97</span>
				</a>
				<a href="/page-9701" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">9701–9800</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 98</span>
				</a>
				<a href="/page-9801" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">9801–9900</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 99</span>
				</a>
				<a href="/page-9901" class="group flex flex-col gap-0.5 rounded-lg border border-neutral-200 bg-white p-3 shadow-sm hover:shadow-md hover:border-blue-300 transition-all text-center">
					<span class="text-xs font-mono text-neutral-400">9901–10000</span>
					<span class="text-xs font-semibold text-neutral-700 group-hover:text-blue-600">Group 100</span>
				</a>
			</div>
		</section>

	</div>
</div>
