<script lang="ts">
    let { comments } = $props();

    const units = [
        { label: 'year', seconds: 31536000 },
        { label: 'month', seconds: 2592000 },
        { label: 'week', seconds: 604800 },
        { label: 'day', seconds: 86400 },
        { label: 'hour', seconds: 3600 },
        { label: 'minute', seconds: 60 },
        { label: 'second', seconds: 1 }
    ];

    const calculateTimeDifference = (secs: number) => {
        const time = Math.max(0, Math.floor(secs));
        for (const { label, seconds } of units) {
            const interval = Math.floor(time / seconds);
            if (interval >= 1) return { interval, unit: label };
        }
        return { interval: 0, unit: 'second' };
    };

    const timeSince = (iso: string) => {
        const now = Date.now()
        const then = new Date(iso).valueOf()
        const seconds = Math.floor((now-then) / 1000);

        const { interval, unit } = calculateTimeDifference(seconds);
        if (interval === 0) return 'just now'
        const suffix = interval === 1 ? '' : 's';
        return `${interval} ${unit}${suffix} ago`;
    }
</script>

{#if Array.isArray(comments) && comments.length}
    {#each comments as comment }
        <div class="comment">
            <div class="commentInfos">
                <div class="commentAuthor">{comment.username}</div>
                <div class="commentTime">{timeSince(comment.created_at)}</div>
            </div>
            <p>{comment.text}</p>
        </div>
  {/each}
{:else}
  <p>No comments yet.</p>
{/if}

<style>
    .comment {
        display: flex;
        flex-direction: column;
        padding: 1rem;
        margin: 0rem 1rem;
    }

    .commentInfos {
        display: flex;
        align-items: baseline;
    }

    .commentAuthor {
        font-weight: bold;
        color: var(--primary-color);
        margin-right: 1rem;
    }

    .commentTime {
        font-size: smaller;
        color: var(--primary-color);
    }

</style>