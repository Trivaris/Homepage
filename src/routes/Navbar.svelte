<script lang="ts">
	import logo from '$lib/assets/nix.svg';
</script>

<nav class = "navbar">
	<div class = "navbar-left">
		<img class="logo navitem" src={logo} alt="Trivaris">
		<a class="navitem navlink" href="https://github.com/trivaris/">Github</a>
		<a class="navitem navlink" href="https://console.hetzner.com/projects/">Cloud</a>
		<a class="navitem navlink" href="https://dash.cloudflare.com/">DNS</a>
	</div>
	<div class="navbar-right">
		<a class="navitem navbutton" href="/login">Admin</a>
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
		color: black;
		transition: opacity 0.3s ease;
	}

	.navbar-right:hover .navbutton {
		opacity: 1;
		font-weight: 600;
		background: hsla(0,0%,99%,1);
		color: black;
		border-style: solid;
		border-color: hsla(0,0%,80%,1);
		border-width: 1px;
		border-radius: 6px;
	}

	.logo {
		width: 2rem;
	}
	
</style>