{
  description = "Dev Shell for this Development";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in
    {
      packages."x86_64-linux" = {
        default = pkgs.stdenvNoCC.mkDerivation {
          pname = "dashboard";
          version = "0.0.1";
          src = ./.;
          dontConfigure = true;
          nativeBuildInputs = [ pkgs.nodejs_22 pkgs.pnpm ];

          buildPhase = ''
            runHook preBuild
            export HOME="$TMPDIR/home"
            mkdir -p "$HOME"
            pnpm run build
            runHook postBuild
          '';

          installPhase = ''
            runHook preInstall
            if [ ! -d "build" ]; then
              echo "Expected SvelteKit build output in ./build; build failed."
              exit 1
            fi
            mkdir -p "$out"
            cp -r build/. "$out/"
            mkdir -p "$out/bin"
            cat > "$out/bin/dashboard" <<EOF
#!/usr/bin/env bash
exec ${pkgs.nodejs_22}/bin/node "$out/index.js" "\$@"
EOF
            chmod +x "$out/bin/dashboard"
            runHook postInstall
          '';

          meta = {
            description = "Self-hosted Node build of the dashboard SvelteKit application";
            platforms = [ "x86_64-linux" ];
          };
        };
      };

      devShells."x86_64-linux" = {
        default = pkgs.mkShell {
          buildInputs = [ pkgs.nodejs_22 pkgs.pnpm ];
        };
      };
    };
}
