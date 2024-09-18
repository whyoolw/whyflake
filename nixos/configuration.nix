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
      #./modules/envh.nix
      ./modules/gnomepolkit.nix
      ./modules/auto-cpufreq.nix
      ./modules/gpu.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Bootloader.

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = [ "nvidia" ];
  hardware.graphics.enable = true; 
  networking.hostName = "nixos"; 

  networking.networkmanager.enable = true;

 
  time.timeZone = "Europe/Riga";

  i18n.defaultLocale = "en_US.UTF-8";


  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.flatpak.enable = true;

  services.xserver = {
    xkb.layout = "us";
    xkb.variant = "";
  };

  services.printing.enable = true;

  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = false;
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
  ];

  system.stateVersion = "${curversion}";

}
