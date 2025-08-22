<script lang="ts">
    import Comments from "./Comments.svelte";
    let data = $props();
</script>

<Comments data={data}/>