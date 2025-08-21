<script lang="ts">
    import meImage from '$lib/assets/me.jpeg';
    import Github from '$lib/assets/logos/Github.svelte';
    import LinkedIn from '$lib/assets/logos/LinkedIn.svelte';
</script>

<style>
    .main {
        display: flex;
        margin: 0% 20%;
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
        background-color: var(--accent-color);
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

</style>

<div class="main">
    <img class="heroImage" src={meImage} alt="me">
    <div class="right">
        <div class="intro">
            <div class="introTextAccent"></div>
            <h1 class="introText">I'm Trivaris</h1>
            <p>Comp-Sci Student / Dr. Pepper Lover / Nerd</p>
        </div>
        <div class="links">
            <a href="https://github.com/trivaris/"><Github /></a>
            <a href="https://www.linkedin.com/in/torben-joneit-094070380/"><LinkedIn /></a>
        </div>
    </div>
</div>