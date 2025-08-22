<script lang="ts">
	import Navbar from './Navbar.svelte';

	import { injectAnalytics } from '@vercel/analytics/sveltekit'
	import { injectSpeedInsights } from '@vercel/speed-insights/sveltekit';
	import favicon from '$lib/assets/favicon.svg';

	let { children } = $props();

	injectSpeedInsights();
	injectAnalytics();
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>

<Navbar />
{@render children?.()}

<style>
	:root {
		--accent-color: hsla(88,100%,80%,1);
		--background-color: hsla(88,100%,96%,1);
		background-color: var(--background-color);
		font-family: "Noto Sans", sans-serif;
	}
</style>