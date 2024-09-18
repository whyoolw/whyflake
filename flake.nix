{
  description = "whyflake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    xdghypr = {
      url = "github:hyprwm/xdg-desktop-portal-hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprpicker = {
      url = "github:hyprwm/hyprpicker";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprlock = {
      url = "github:hyprwm/hyprlock";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  

  outputs = { self, nixpkgs, home-manager, xdghypr, hyprland, ... }@inputs:
  
  let
    system = "x86_64-linux"; 
    curversion = "24.11";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
        cudaSupport = true;
      };
      overlays = [
        (final: prev: {
          over-steam = (import ./overlays/steam.nix { inherit pkgs; });
        })
      ];
    };
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
      inherit inputs system pkgs curversion;
      };
      modules = [
        ./nixos/configuration.nix
        home-manager.nixosModules.home-manager
        { 
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.whyoolw = import (./. + "/home/home.nix") ;
            extraSpecialArgs = { inherit curversion; };
          };
        }
      ];
    };
  };
}