<script lang="ts">
	import meImage from '$lib/assets/me.jpeg';
	import Github from '$lib/assets/logos/Github.svelte';
	import LinkedIn from '$lib/assets/logos/LinkedIn.svelte';
	import Instagram from '$lib/assets/logos/Instagram.svelte';
</script>

<div class="main">
	<div class="right">
		<div class="intro">
			<div class="introTextAccent"></div>
			<h1 class="introText">I'm Trivaris</h1>
			<p>Comp-Sci Student / Dr. Pepper Lover / Nerd</p>
		</div>
		<div class="links">
			<a href="https://github.com/trivaris/"><Github /></a>
			<a href="https://www.linkedin.com/in/torben-joneit-094070380/"><LinkedIn /></a>
			<a href="https://www.instagram.com/trbn.jnt/"><Instagram /></a>
		</div>
	</div>
	<img class="heroImage" src={meImage} alt="me" />
</div>

<style>
	.main {
		display: flex;
		flex-direction: column;
		gap: clamp(1rem, 5vw, 2rem);
		margin: 0% var(--border-padding);
	}

	.heroImage {
		width: clamp(12rem, 35vw, 25rem);
		border-radius: 20px;
	}

	.introText {
		margin-top: 0px;
		padding-top: 0px;
		font-size: clamp(2rem, 6vw, 3rem);
		font-weight: 500;
	}

	.introTextAccent {
		background-color: var(--secondary-color);
		width: 3rem;
		height: 0.5rem;
		margin-bottom: -0.5rem;
		padding-bottom: 0px;
	}

	.right {
		display: flex;
		justify-content: space-between;
		flex-direction: column;
	}

	.links {
		display: flex;
		flex-direction: row;
	}

	@media (min-width: 40rem) {
		.main {
			flex-direction: row-reverse;
			align-items: center;
		}

		.heroImage {
			margin-left: min(2%, 2rem);
			margin-right: min(7%, 4rem);
		}
	}
</style>
