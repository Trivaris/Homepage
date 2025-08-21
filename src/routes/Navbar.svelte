<script lang="ts">
	import Logo from '$lib/assets/logos/Logo.svelte';
</script>

<nav class = "navbar">
	<div class = "navbar-left">
		<Logo />
		<a class="navitem navlink" href="https://github.com/trivaris/">Github</a>
		<a class="navitem navlink" href="https://console.hetzner.com/projects/">Cloud</a>
		<a class="navitem navlink" href="https://dash.cloudflare.com/">DNS</a>
	</div>
	<div class="navbar-right">
		<button class="navitem navbutton">Admin</button>
	</div>
</nav>

<style>
	.navbar {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 2% 20%;
	}

	.navbar-left {
		display: flex;
		justify-content: space-between;
		align-items: center;
	}

	.navitem {
		font-size: large;
		font-weight: bold;
		margin: 0rem 1rem;
		padding: 0.3rem 0.8rem;
		text-decoration: none;
	}

	.navlink {
		border-radius: 20px;
		color: gray;
	}

	.navlink:hover {
		background-color: hsla(0,0%,90%,1);
		color: black;
	}

	.navbar-right {
		display: flex;
		justify-content: space-between;
		align-items: center;
		position: relative;
	}

	.navbutton {
		opacity: 0;
		transition: opacity 0.3s ease;
		font-weight: 600;
		background-color: hsla(0,0%,90%,1);
		color: black;
		border-radius: 10px;
		border-style: hidden;
	}

	.navbar-right:hover .navbutton {
		opacity: 1;
		font-weight: 600;
		background-color: hsla(0,0%,90%,1);
		color: black;
		border-radius: 10px;
		border-style: hidden;
	}
</style>