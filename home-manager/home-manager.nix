{
  description = "Home-Manager Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
	url = "github:nix-community/home-manager";
	inputs.nixpks.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
	modules = [
	  inputs.home-manager.nixosModules.default
	];
    };
  };
}
