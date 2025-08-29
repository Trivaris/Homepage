<script lang="ts">
    import Hero from './Hero.svelte';
    import meImage from "$lib/assets/me.jpeg";
    import aliImage from "$lib/assets/ali.jpeg"

    const heroInfos = {
        trivaris: {
            name: "Trivaris",
            intro: "Comp-Sci Student / Dr. Pepper Lover / Nerd",
            image: meImage,
            links: {
                github: "https://github.com/trivaris/",
                linkedIn: "https://www.linkedin.com/in/torben-joneit-094070380/",
                instagram: "https://www.instagram.com/trbn.jnt"
            }
        },
        alireza: {
            name: "Alireza",
            intro: "Physics Student / Gymrat / Nerd",
            image: aliImage,
            links: {
                github: "https://github.com/trivaris/",
                linkedIn: "https://www.linkedin.com/in/torben-joneit-094070380/",
                instagram: "https://www.instagram.com/trbn.jnt"
            }
        }
    };

</script>

<div class="hero">
    <Hero
        {...heroInfos.trivaris}
    />
    <Hero
        {...heroInfos.alireza}
    />
</div>

<style>
    .hero {
        display: flex;
        align-content: center;
        flex-direction: column;
        margin-top: 5%;
    }
</style>