<script lang="ts">
	import { afterNavigate } from '$app/navigation';
    import { clickOutside } from '$lib/actions/clickOutside'

    let { links } = $props();
    let open = $state(false);

    const onKey = (e: KeyboardEvent) => { if (e.key === 'Escape') open = false; };
	afterNavigate(() => (open = false));
</script>

<div class="menu" use:clickOutside onoutclick={() => (open = false)}>
  <button
    class="hamburger"
    onclick={() => (open = !open)}
    onkeydown={onKey}
    aria-expanded={open}
    aria-label="Toggle Menu"
  >
    <div class="patty"></div>
    <div class="patty"></div>
    <div class="patty"></div>
  </button>

  <div class="items {open ? 'show' : ''}">
    {#each links as link}
      <a class="navitem" href={link.rel}>{link.name}</a>
    {/each}
  </div>
</div>

<style>
    .menu {
        display: flex;
        align-items: center;
        position: relative;
    }

    .hamburger {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        width: 1.5rem;
        height: 1.2rem;
        background: none;
        border: none;
        cursor: pointer;
        padding: 0;
    }

    .hamburger:hover .patty {
        background-color: var(--primary-color);
    }

    .patty {
        background-color: var(--secondary-color);
        width: 100%;
        height: 0.2rem;
        border-radius: 0.2rem;
        transition: background 0.3s;
    }

    .items {
        position: absolute;
        top: 2.5rem;
        right: 0;
        display: flex;
        flex-direction: column;
        gap: 0.75rem;
        padding: 0.75rem 1rem;
        background: var(--secondary-color);
        border-radius: 0.75rem;

        opacity: 0;
        transform: translateY(-12px);
        pointer-events: none;
        transition: opacity 0.3s, transform 0.3s;

        white-space: nowrap;
        width: max-content;
        min-width: 8rem;
    }

    .items.show {
        opacity: 1;
        transform: translateY(0);
        pointer-events: auto;
    }

    .navitem {
        color: var(--primary-color);
        text-decoration: none;
        font-size: 1rem;
        font-weight: bold;
        padding: 0.5rem;
    }

    .navitem:hover {
        text-decoration: underline;
    }
</style>
