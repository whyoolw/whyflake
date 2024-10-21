{ config
, pkgs
, curversion
, ... 
}:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/games.nix
      ./modules/user.nix
      ./modules/fonts.nix
      ./modules/zram.nix
      ./modules/neovim.nix
      ./modules/envh.nix
      ./modules/gnomepolkit.nix
      ./modules/auto-cpufreq.nix
      ./modules/gpu.nix
      ./modules/sound.nix
    ];

  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    auto-optimise-store = true;
    warn-dirty = false;
  };

  # Bootloader.

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = [ "nvidia" ];
  networking.hostName = "thinkpad"; 
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Riga";
  i18n.defaultLocale = "en_US.UTF-8";

  services = {
    flatpak.enable = true;
    fstrim.enable = true;
    printing.enable = false;
    xserver = {
      enable = true;
      videoDrivers = [ "nvidia" ];
      displayManager.gdm.enable = true;
      #desktopManager.gnome.enable = true;
      xkb.layout = "us";
      xkb.variant = "";
    };
  };

  environment.systemPackages = with pkgs; [
  ];

  system.stateVersion = "${curversion}";

}
