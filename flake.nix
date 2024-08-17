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
      };
      overlays = [
        (final: prev: {
          over-steam = (import ./overlays/steam.nix { inherit pkgs; });
          over-hyprland = hyprland.packages.${prev.system}.hyprland;                            # hyprland overlay
          over-hypr-portal = xdghypr.packages.${prev.system}.xdg-desktop-portal-hyprland;
          #over-spotify = (prev.callPackage ./overlays/spoti.nix {});
        })
      ];
    };
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
      inherit inputs system pkgs;
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