export function clickOutside(node: HTMLElement) {
    const handle = (e: MouseEvent) => {
        if (!node.contains(e.target as Node)) node.dispatchEvent(new CustomEvent('outclick'));
    };
    document.addEventListener('click', handle, true);
    return { destroy() { document.removeEventListener('click', handle, true); } };
}