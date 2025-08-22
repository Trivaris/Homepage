<script lang="ts">
    import Comments from "./Comments.svelte";
    let { data } = $props();
</script>

<div class="comments">
    <Comments comments={ data.comments } />
</div>

<style>
    .comments {
        display: flex;
        align-content: center;
        flex-direction: column;
        margin: 2% var(--border-padding);
    }
</style>