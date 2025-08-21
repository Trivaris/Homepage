<script lang="ts">
  import Navbar from './Navbar.svelte';

	import { injectAnalytics } from '@vercel/analytics/sveltekit'
	import { injectSpeedInsights } from '@vercel/speed-insights/sveltekit';
	import favicon from '$lib/assets/favicon.svg';
	import logo from '$lib/assets/nix.svg';

	let { children } = $props();

	injectSpeedInsights();
	injectAnalytics();
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>

<header>
	<Navbar />
</header>

{@render children?.()}

<style>
	* {
		background-color: hsla(0,0%,98%,1);
	}
</style>