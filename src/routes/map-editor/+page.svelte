<script lang="ts">
  import { onMount } from 'svelte';
  import { DateTime } from 'luxon';
  import { debounce } from 'lodash-es';
  import hljs from 'highlight.js/lib/core';
  import typescript from 'highlight.js/lib/languages/typescript';
  import { Editor } from '@tiptap/core';
  import Document from '@tiptap/extension-document';
  import Paragraph from '@tiptap/extension-paragraph';
  import Text from '@tiptap/extension-text';
  import Bold from '@tiptap/extension-bold';
  import Italic from '@tiptap/extension-italic';
  import Heading from '@tiptap/extension-heading';
  import Link from '@tiptap/extension-link';
  import History from '@tiptap/extension-history';

  hljs.registerLanguage('typescript', typescript);

  let mapContainer: HTMLDivElement | undefined = $state();
  let editorContainer: HTMLDivElement | undefined = $state();
  let editor: Editor | null = $state(null);
  let wordCount = $state(0);
  let mapLoaded = $state(false);
  let mapError = $state('');

  const now = DateTime.now().toLocaleString(DateTime.DATETIME_FULL);

  const sampleCode = `import { Editor } from '@tiptap/core';
import mapboxgl from 'mapbox-gl';

const editor = new Editor({
  element: document.querySelector('#editor'),
  content: '<p>Hello World!</p>',
});

const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/light-v11',
  center: [10.757, 59.913],
  zoom: 9,
});`;

  const highlighted = hljs.highlight(sampleCode, { language: 'typescript' }).value;

  const updateWordCount = debounce((html: string) => {
    const text = html.replace(/<[^>]*>/g, ' ').trim();
    wordCount = text ? text.split(/\s+/).filter(Boolean).length : 0;
  }, 200);

  onMount(() => {
    // Initialize tiptap editor
    if (editorContainer) {
      editor = new Editor({
        element: editorContainer,
        extensions: [Document, Paragraph, Text, Bold, Italic, Heading, Link, History],
        content: `<h2>Map + Editor demo</h2>
<p>This route imports <strong>mapbox-gl</strong>, <strong>tiptap</strong>, <em>luxon</em>,
<strong>lodash-es</strong>, and <strong>highlight.js</strong> to stress the Vite/rolldown
module graph and help reproduce the build stall described in
<a href="https://github.com/sveltejs/kit/issues/15554">sveltejs/kit#15554</a>.</p>`,
        onUpdate({ editor: e }) {
          updateWordCount(e.getHTML());
        },
      });
      updateWordCount(editor.getHTML());
    }

    // Lazy-load mapbox-gl (browser-only, large bundle)
    let map: import('mapbox-gl').Map | null = null;
    import('mapbox-gl').then(({ default: mapboxgl }) => {
      import('mapbox-gl/dist/mapbox-gl.css').catch(() => {
        // CSS import may not resolve in all bundler configs; that is fine.
      });

      if (!mapContainer) return;

      // Use an empty token — the map canvas will render but tiles won't load
      // without a valid Mapbox public token; that is intentional for this
      // reproduction which only needs the JS bundle to be processed by Vite.
      (mapboxgl as typeof mapboxgl & { accessToken: string }).accessToken =
        typeof import.meta.env !== 'undefined' && import.meta.env.VITE_MAPBOX_TOKEN
          ? (import.meta.env.VITE_MAPBOX_TOKEN as string)
          : '';

      try {
        map = new mapboxgl.Map({
          container: mapContainer,
          style: 'mapbox://styles/mapbox/light-v11',
          center: [10.757, 59.913], // Oslo
          zoom: 9,
          failIfMajorPerformanceCaveat: false,
        });

        map.on('load', () => {
          mapLoaded = true;
          new mapboxgl.Marker({ color: '#2563eb' })
            .setLngLat([10.757, 59.913])
            .setPopup(new mapboxgl.Popup().setHTML('<strong>Oslo</strong>'))
            .addTo(map!);
        });

        map.on('error', (e) => {
          mapError = e.error?.message ?? 'Map error (expected without a valid token)';
        });
      } catch (err) {
        mapError = err instanceof Error ? err.message : String(err);
      }
    });

    return () => {
      editor?.destroy();
      map?.remove();
    };
  });
</script>

<svelte:head>
  <title>Map + Editor — Heavy Deps Demo</title>
  <meta
    name="description"
    content="Demo route importing mapbox-gl, tiptap, luxon, lodash-es and highlight.js to stress the Vite/rolldown build graph (sveltejs/kit#15554)."
  />
</svelte:head>

<div class="min-h-screen bg-neutral-50 px-4 py-12">
  <div class="mx-auto max-w-4xl space-y-8">

    <header class="space-y-2">
      <div class="flex flex-wrap items-center gap-2">
        <span class="inline-flex items-center rounded-full bg-blue-100 px-2.5 py-0.5 text-xs font-semibold text-blue-700">
          mapbox-gl
        </span>
        <span class="inline-flex items-center rounded-full bg-violet-100 px-2.5 py-0.5 text-xs font-semibold text-violet-700">
          tiptap
        </span>
        <span class="inline-flex items-center rounded-full bg-emerald-100 px-2.5 py-0.5 text-xs font-semibold text-emerald-700">
          luxon · lodash-es · highlight.js
        </span>
      </div>
      <h1 class="text-3xl font-bold tracking-tight text-neutral-900">Map + Rich-Text Editor</h1>
      <p class="text-sm text-neutral-500">
        Heavy-deps route — rendered at {now}. See
        <a href="https://github.com/sveltejs/kit/issues/15554" class="text-blue-600 hover:underline"
          >sveltejs/kit#15554</a
        >.
      </p>
    </header>

    <main class="grid gap-8 lg:grid-cols-2">

      <!-- Map panel -->
      <section class="space-y-3">
        <h2 class="text-sm font-semibold text-neutral-800">Mapbox GL Map</h2>
        <div
          bind:this={mapContainer}
          class="relative h-72 w-full overflow-hidden rounded-2xl border border-neutral-200 bg-neutral-100 shadow"
        >
          {#if !mapLoaded}
            <div class="absolute inset-0 flex flex-col items-center justify-center gap-2 text-xs text-neutral-400">
              <svg class="h-8 w-8 opacity-40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
                <path stroke-linecap="round" stroke-linejoin="round" d="M9 6.75V15m6-6v8.25m.503 3.498 4.875-2.437c.381-.19.622-.58.622-1.006V4.82c0-.836-.88-1.38-1.628-1.006l-3.869 1.934c-.317.159-.69.159-1.006 0L9.503 3.252a1.125 1.125 0 0 0-1.006 0L3.622 5.689C3.24 5.88 3 6.27 3 6.695V19.18c0 .836.88 1.38 1.628 1.006l3.869-1.934c.317-.159.69-.159 1.006 0l4.994 2.497c.317.158.69.158 1.006 0Z" />
              </svg>
              {#if mapError}
                <span class="max-w-[20ch] text-center text-rose-500">{mapError}</span>
              {:else}
                <span>Loading map…</span>
              {/if}
            </div>
          {/if}
        </div>
        <p class="text-xs text-neutral-400">
          Center: 10.757°E, 59.913°N (Oslo). Set <code class="font-mono">VITE_MAPBOX_TOKEN</code> to load tiles.
        </p>
      </section>

      <!-- Tiptap editor panel -->
      <section class="space-y-3">
        <div class="flex items-center justify-between">
          <h2 class="text-sm font-semibold text-neutral-800">Rich-Text Editor (tiptap v3)</h2>
          <span class="text-xs tabular-nums text-neutral-400">{wordCount} words</span>
        </div>
        <div
          bind:this={editorContainer}
          class="min-h-[17rem] rounded-2xl border border-neutral-200 bg-white px-5 py-4 shadow [&_.tiptap]:min-h-[14rem] [&_.tiptap]:outline-none [&_.tiptap_h2]:mb-2 [&_.tiptap_h2]:text-lg [&_.tiptap_h2]:font-semibold [&_.tiptap_h2]:text-neutral-900 [&_.tiptap_p]:mb-2 [&_.tiptap_p]:text-sm [&_.tiptap_p]:text-neutral-700 [&_.tiptap_strong]:font-semibold [&_.tiptap_a]:text-blue-600 [&_.tiptap_a]:underline"
        ></div>
        <div class="flex flex-wrap gap-1.5">
          {#each [['B', 'bold'], ['I', 'italic'], ['H2', 'heading']] as [label, cmd]}
            <button
              onclick={() => {
                if (!editor) return;
                const chain = editor.chain().focus();
                if (cmd === 'heading') {
                  chain.toggleHeading({ level: 2 }).run();
                } else if (cmd === 'bold') {
                  chain.toggleBold().run();
                } else if (cmd === 'italic') {
                  chain.toggleItalic().run();
                }
              }}
              class="rounded border border-neutral-200 bg-white px-2.5 py-1 text-xs font-semibold text-neutral-700 hover:bg-neutral-50 transition-colors"
            >{label}</button>
          {/each}
        </div>
      </section>

    </main>

    <!-- Syntax-highlighted code block -->
    <section class="space-y-3">
      <h2 class="text-sm font-semibold text-neutral-800">
        Bundled code (highlight.js — typescript)
      </h2>
      <pre class="overflow-x-auto rounded-2xl border border-neutral-200 bg-neutral-900 px-5 py-4 text-xs leading-relaxed text-neutral-100"><code class="hljs language-typescript">{@html highlighted}</code></pre>
    </section>

    <footer class="flex items-center justify-between border-t border-neutral-200 pt-6 text-xs text-neutral-400">
      <span>Heavy-deps demo route</span>
      <div class="flex items-center gap-4">
        <a href="/page-10000" class="hover:text-neutral-600">← Page 10000</a>
        <a href="/reproduction" class="hover:text-neutral-600">Index</a>
      </div>
    </footer>

  </div>
</div>
