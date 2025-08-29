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
	<title>Trivaris' Homepage</title>
</svelte:head>

<Navbar />
{@render children?.()}

<style>
	:root {
		--primary-color: hsla(88,100%,30%,1);
		--secondary-color: rgb(136, 255, 0);
		--background-color: hsla(88,100%,96%,1);
		--border-padding: 0.5rem;
		--font: "Noto Sans", sans-serif;
		background-color: var(--background-color);
		font-family: var(--font);
	}
</style>