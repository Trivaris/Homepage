<script lang="ts">
    import Hero from './Hero.svelte';
    import meImage from "$lib/assets/me.jpeg";
    import aliImage from "$lib/assets/ali.jpeg"

    const infos = [
        {
            name: "Trivaris",
            intro: "Comp-Sci Student / Dr. Pepper Lover / Nerd",
            image: meImage,
            links: {
                github: "https://github.com/trivaris/",
                linkedIn: "https://www.linkedin.com/in/torben-joneit-094070380/",
                instagram: "https://www.instagram.com/trbn.jnt"
            }
        },
        {
            name: "Alireza",
            intro: "Physics Student / Gymrat / Nerd",
            image: aliImage,
            links: {
                github: "https://github.com/trivaris/",
                linkedIn: "https://www.linkedin.com/in/alireza-baktashian-4aa8b6380/",
                instagram: "https://www.instagram.com/alirezabak24"
            }
        }
    ];

</script>

<div class="heroes">
    {#each infos as info }
        <Hero {...info} />
    {/each}
</div>

<style>
    .heroes {
        margin: clamp(1rem, 5vh, 4rem) var(--border-margin);

        display: flex;
        flex-direction: column;
        justify-content: space-between;
        gap: clamp(2rem, 8vh, 6rem);
    }
</style>