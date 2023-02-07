{
  inputs.nixpkgs = { url = "github:nixos/nixpkgs/nixos-22.11"; };
  outputs = { self, nixpkgs }:
    let
    in {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./configuration.nix ];
      };
    };
}
