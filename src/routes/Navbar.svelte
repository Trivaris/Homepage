<script lang="ts">
	import HamburgerMenu from '$lib/components/HamburgerMenu.svelte';
	import Logo from '$lib/logos/Logo.svelte';

	let { links } = $props();
</script>

<nav class = "navbar">
	<a href="/"><Logo /></a>
	<div class="hamburger"><HamburgerMenu {links}/></div>
	{#each links as link}
		<a class="navitem" href="/{link.rel}">{link.name}</a>			
	{/each}
	<a class="navitem" href="/admin">Admin</a>
</nav>

<style>
	.navbar {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 2% var(--border-padding);
	}

	.navitem {
		display: none;
	}

	/* .navitem {
		font-size: large;
		font-weight: bold;
		margin: 0rem 1rem;
		padding: 0.3rem 0.8rem;
		text-decoration: none;
		border-radius: 20px;
		color: gray;
	}

	.navitem:hover {
		background-color: var(--secondary-color);
		color: black;
	} */

</style>