<script lang="ts">
	import Navbar from './Navbar.svelte';

	import { injectAnalytics } from '@vercel/analytics/sveltekit';
	import { injectSpeedInsights } from '@vercel/speed-insights/sveltekit';
	import favicon from '$lib/assets/favicon.svg';

	let { children } = $props();

	const links = [
		{ rel: "/tictactoe", name: "Tic Tac Toe" },
		{ rel: "/comments", name: "DB Testing" }
	]

	injectSpeedInsights();
	injectAnalytics();
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
	<title>Trivaris' Homepage</title>
	<meta name="description" content="Comp-Sci Student | Softwareentwickler (Kotlin, Svelte, NixOS)" />

	<meta property="og:title" content="Trivaris – Homepage" />
	<meta property="og:description" content="Comp-Sci Student | Softwareentwickler (Kotlin, Svelte, NixOS)" />
	<meta property="og:type" content="website" />
	<meta property="og:url" content="https://trivaris.org/" />
	<meta property="og:image" content="https://trivaris.org/preview.jpg" />

	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:title" content="Trivaris – Homepage" />
	<meta name="twitter:description" content="Comp-Sci Student | Softwareentwickler (Kotlin, Svelte, NixOS)" />
	<meta name="twitter:image" content="https://trivaris.org/preview.jpg" />
</svelte:head>

<Navbar {links}/>
{@render children?.()}

<style>
	:root {
		--primary-color: hsla(88,100%,30%,1);
		--secondary-color: rgb(136, 255, 0);
		--background-color: hsla(88,100%,96%,1);
		--border-margin: clamp(0.5rem, 2vw, 3rem);
		--font: "Noto Sans", sans-serif;
		background-color: var(--background-color);
		font-family: var(--font);
	}
</style>
