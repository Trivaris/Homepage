<script lang="ts">
	import Hero from './Hero.svelte';
</script>

<div class="hero">
	<Hero />
</div>

<style>
	.hero {
		display: flex;
		align-content: center;
		margin-top: clamp(2rem, 5vh, 5%);
	}
</style>
