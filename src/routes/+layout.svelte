<script lang="ts">
	import favicon from '$lib/assets/favicon.svg';
	import logo from '$lib/assets/nix.svg';

	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>

<nav class = "navbar">
	<div class = "navbar-left">
		<ul>
			<li><img class="logo" src={logo} alt="Trivaris"></li>
			<li><a href="https://github.com/trivaris/">Github</a></li>
			<li><a href="https://console.hetzner.com/projects/">Cloud</a></li>
			<li><a href="https://dash.cloudflare.com/">DNS</a></li>
		</ul>
	</div>
	<div class="navbar-right">
		<ul>
			<li><a href="/login">Login</a></li>
		</ul>
	</div>
</nav>

<style>
	* { text-decoration: none; }

	.navbar {
		background-color: #D9D9D9;
		padding-right: 25px;
		padding-left: 25px;
		display: flex;
		justify-content: space-between;
	}

	.logo {
		height: 32px;
		width: auto;
		vertical-align: middle;
		margin-right: 16px;
	}

	li {
		list-style: none;
		display: inline-block;
		margin-left: 25px;
		margin-right: 25px;
	}

	.navbar a {
		color: black;
		font-size: 18px;
		font-weight: bold;
		font-family: "Fredoka", sans-serif;
		font-optical-sizing: auto;
	}

	:global(body) {
		margin: 0;
	}
</style>

{@render children?.()}
