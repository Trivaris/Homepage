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
		<a class="navitem navbutton" href="/login">Log In</a>
		<a class="navitem navbutton" href="/singup">Sign Up</a>
	</div>
</nav>
<hr />


<style>
	.navbar {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 0.5rem 8rem;
	}

	.navbar-left {
		display: flex;
		justify-content: space-evenly;
		align-items: center;
	}

	.navitem {
		font-family: "Noto Sans", sans-serif;
		font-size: small;
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

	.navbutton {
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
	
	hr {
		border: none;
		height: 0.5px;
		background: darkgray;
	}
</style>