declare global {
	namespace App {
	}
}

declare module "svelte/elements" {
  export interface DOMAttributes {
	onoutclick?: (event: CustomEvent<MouseEvent>) => void;
  }
}


export {};
