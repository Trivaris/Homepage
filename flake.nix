{
  description = "Dev Shell for this Development";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: let 
    pkgs = nixpkgs.legacyPackages."x86_64-linux";
    extensions = [
      pkgs.vscode-extensions.svelte.svelte-vscode
      pkgs.vscode-extensions.dbaeumer.vscode-eslint
      pkgs.vscode-extensions.esbenp.prettier-vscode
      pkgs.vscode-extensions.bradlc.vscode-tailwindcss
      pkgs.vscode-extensions.jnoortheen.nix-ide
    ];
  in {
    devShells."x86_64-linux".default = pkgs.mkShell {
      buildInputs = (builtins.attrValues {
        inherit (pkgs)
          nodejs_22
          pnpm
          svelte-language-server
          typescript-language-server
          tailwindcss-language-server
          eslint_d
        ;
      }) ++ extensions;
      shellHook = ''
        EXTDIR=$(mktemp -d)
        echo "Preparing VSCodium extensions in $EXTDIR"

        # symlink all nix-provided extensions
        for e in ${builtins.concatStringsSep " " (map (ext: "${ext}/share/vscode/extensions/*") extensions)}; do
          ln -s "$e" "$EXTDIR/"
        done

        # open codium with these extensions
        echo "Launching VSCodium with extensions from $EXTDIR..."
        codium --extensions-dir "$EXTDIR" "$PWD" &
      '';
    };
  };
}
