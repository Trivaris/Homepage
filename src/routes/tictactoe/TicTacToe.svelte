<script lang="ts">
    const size = 3;
    let status = $state("No Result yet.");

</script>

<div class="main" style="--size: {size * size}rem">
    {#each Array(size) as _, __}
        <div class="row">
        {#each Array(size) as _, __}
            <span>X</span>
        {/each}
        </div>
    {/each}
</div>

<style>
    .main {
        display: flex;
        justify-content: space-evenly;
        align-items: space-evenly;
        flex-direction: column;
        width: var(--size);
        height: var(--size);
    }

    .row span {
        border-style: solid;
        border-color: black;
        width: 1rem;
        height: 1rem;
        padding: 0.5rem;
        margin: 1rem;
    }
</style>