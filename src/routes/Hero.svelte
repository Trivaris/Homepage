<script lang="ts">
    import Github from '$lib/logos/Github.svelte';
    import LinkedIn from '$lib/logos/LinkedIn.svelte';
    import Instagram from '$lib/logos/Instagram.svelte';

    let { name, intro, image, links } = $props();

</script>

<div class="hero">
    <div class="introDiv">
        <div class="introAccent"></div>
        <h1 class="intro">I'm {name}</h1>
        <p class="introText">{intro}</p>
    </div>
    <div class="links">
        <a href={links.github}><Github /></a>
        <a href={links.linkedIn}><LinkedIn /></a>
        <a href={links.instagram}><Instagram /></a>
    </div>
    <img class="image" src={image} alt={name}>
</div>

<style>
    .hero {
        display: flex;
        flex-direction: column;
        align-items: right;
    }
    
    .image {
        max-width: 100%;
        height: auto;
        display: block;
        border-radius: 20px;
    }

    .links {
        display: flex;
        margin: 5%;
    }

    .introDiv {
        display: flex;
        flex-direction: column;
        margin: 5%;
    }

    .intro {
        margin-top: 0px;
        padding-top: 0px;
        font-size: 3rem;
        font-weight: bold;
    }

    .introAccent {
        background-color: var(--secondary-color);
        width: 3rem;
        height: 0.5rem;
        margin-bottom: -0.5rem;
        padding-bottom: 0px;
    }

</style>