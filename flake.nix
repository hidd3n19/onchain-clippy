{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = { nixpkgs, flake-utils, ... }:
        flake-utils.lib.eachDefaultSystem (system:
          let pkgs = import nixpkgs {
            inherit system;
            overlays = [];
          };
        in {
          devShells.default = pkgs.mkShell {
            buildInputs = [
              pkgs.nodejs_22
              pkgs.nodePackages.pnpm
              pkgs.bun
              pkgs.docker
            ];

            shellHook = ''
              export PS1="[dev] $PS1"

              [[ -f .env ]] && source .env
            '';
          };
        });
}
