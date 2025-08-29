<script lang="ts">
    import Github from '$lib/assets/logos/Github.svelte';
    import LinkedIn from '$lib/assets/logos/LinkedIn.svelte';
    import Instagram from '$lib/assets/logos/Instagram.svelte';

    let { name, intro, image, links } = $props();

</script>

<div class="main">
    <img class="heroImage" src={image} alt={name}>
    <div class="heroText">
        <div class="intro">
            <div class="introTextAccent"></div>
            <h1 class="introText">I'm {name}</h1>
            <p>{intro}</p>
        </div>
        <div class="links">
            <a href={links.github}><Github /></a>
            <a href={links.linkedIn}><LinkedIn /></a>
            <a href={links.instagram}><Instagram /></a>
        </div>
    </div>
</div>

<style>
    .main {
        display: flex;
        margin: 0% 5% var(--border-padding) var(--border-padding);
    }
    
    .heroImage {
        width: 35%;
        border-radius: 20px;
        margin-left: 2%;
        margin-right: 7%;
    }
    
    .introText {
        margin-top: 0px;
        padding-top: 0px;
        font-size: 3rem;
        font-weight: 500;
    }

    .introTextAccent {
        background-color: var(--secondary-color);
        width: 3rem;
        height: 0.5rem;
        margin-bottom: -0.5rem;
        padding-bottom: 0px;
    }

    .heroText {
        display: flex;
        justify-content: space-between;
        flex-direction: column;
    }

    .links {
        display: flex;
        flex-direction: row;
    }

</style>