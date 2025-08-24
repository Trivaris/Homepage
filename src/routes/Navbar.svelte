<script lang="ts">
	import Logo from '$lib/assets/logos/Logo.svelte';
	let menuOpen = false;
</script>

<nav class="navbar">
	<a class="logo" href="/"><Logo /></a>
	<button class="hamburger" aria-label="Toggle navigation" on:click={() => (menuOpen = !menuOpen)}>
		<span></span>
		<span></span>
		<span></span>
	</button>
	<div class="links" class:open={menuOpen}>
		<a class="navitem navlink" href="/comments">Database Testing</a>
		<a class="navitem navlink" href="/tictactoe">Tic Tac Toe</a>
		<a class="navitem navlink" href="https://dash.cloudflare.com/">DNS</a>
	</div>
</nav>

<style>
	.navbar {
		display: flex;
		align-items: center;
		padding: clamp(0.5rem, 2%, 1rem) var(--border-padding);
	}

	.links {
		display: flex;
		align-items: center;
		margin-left: auto;
	}

	.navitem {
		font-size: clamp(1rem, 1.5vw, 1.2rem);
		font-weight: bold;
		margin: 0 clamp(0.5rem, 2vw, 1rem);
		padding: clamp(0.2rem, 1vw, 0.3rem) clamp(0.5rem, 1vw, 0.8rem);
		text-decoration: none;
	}

	.navlink {
		border-radius: 20px;
		color: gray;
	}

	.navlink:hover {
		background-color: var(--secondary-color);
		color: black;
	}

	.hamburger {
		display: none;
		flex-direction: column;
		justify-content: center;
		gap: 0.25rem;
		margin-left: auto;
		background: transparent;
		border: none;
		cursor: pointer;
	}

	.hamburger span {
		width: 1.5rem;
		height: 0.15rem;
		background-color: currentColor;
		border-radius: 2px;
	}

	@media (max-width: 40rem) {
		.links {
			display: none;
			flex-direction: column;
			width: 100%;
			padding: clamp(0.5rem, 2vw, 1rem) var(--border-padding);
			background-color: var(--background-color);
		}

		.links.open {
			display: flex;
		}

		.hamburger {
			display: flex;
		}

		.navbar {
			flex-wrap: wrap;
		}
	}
</style>
