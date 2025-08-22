<script lang="ts">
    let { data } = $props();

    const units = [
        { label: 'year', seconds: 31536000 },
        { label: 'month', seconds: 2592000 },
        { label: 'week', seconds: 604800 },
        { label: 'day', seconds: 86400 },
        { label: 'hour', seconds: 3600 },
        { label: 'minute', seconds: 60 },
        { label: 'second', seconds: 1 }
    ];

    const calculateTimeDifference = (time: number) => {
        for (let { label, seconds } of units) {
            const interval = Math.floor(time / seconds);
            if (interval >= 1)
                return { interval: interval, unit: label };
        }
        return { interval: 0, unit: '' };
    };

    const timeSince = (time: string) => {
        const now = new Date()
        const then = new Date(time)
        const seconds = Math.floor((then.valueOf() - now.valueOf()) / 1000);

        const { interval, unit } = calculateTimeDifference(seconds);
        const suffix = interval === 1 ? '' : 's';
        return `${interval} ${unit}${suffix} ago`;
    }
</script>

{#each data.comments as Comment }
    <div class="comment">
        <h3>{Comment.username}</h3>
        <h6>{timeSince(Comment.created_at)}</h6>
        <p>{Comment.text}</p>
    </div>

{/each}

<style>
    .comment {
        border-style: solid;
        border-color: black;
        border-width: 5px;
        border-radius: 10px;
        padding: 1rem;
    }

    .comment h3 {
        margin: 0px;
    }

    .comment h6 {
        margin: 0px;
    }
</style>