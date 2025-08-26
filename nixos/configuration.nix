{ config
, pkgs
, curversion
, inputs
, ... 
}:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/games.nix
      ./modules/user.nix
      ./modules/fonts.nix
      #./modules/zram.nix
      ./modules/neovim.nix
      #./modules/envh.nix
      ./modules/gnomepolkit.nix
      ./modules/auto-cpufreq.nix
      ./modules/gpu.nix
      ./modules/sound.nix
      ./modules/thinkfan.nix
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
    flatpak = {
      enable = true;
      packages = [
        "com.github.neithern.g4music"
        "com.github.tchx84.Flatseal"
        "com.heroicgameslauncher.hgl"
        "io.github.jonmagon.kdiskmark"
        "md.obsidian.Obsidian"
        "net.blockbench.Blockbench"
        "org.gimp.GIMP" 
        "org.kde.kdenlive"
        "org.onlyoffice.desktopeditors"
        "org.vinegarhq.Sober"
        "ro.go.hmlendea.DL-Desktop"
        "sh.ppy.osu"
      ];
    };
    fstrim.enable = true;
    printing.enable = false;
    displayManager.gdm.enable = true;
      #displayManager.sddm.wayland.enable = true;
      #displayManager.sddm.enable = true;
      #desktopManager.gnome.enable = true;
    xserver = {
      enable = true;
      videoDrivers = [ "nvidia" ];
      xkb.layout = "us";
      xkb.variant = "";
    };
  };

  environment.systemPackages = with pkgs; [
  ];

  programs.niri.enable = true;
  system.stateVersion = "${curversion}";
  xdg.portal = {
    enable = true;
    config = {
      common = {
        default = [
          "wlr"
          "gtk"
        ];
        "org.freedesktop.impl.portal.Access" = [
          "gtk"
        ];
        "org.freedesktop.impl.portal.Notification" = [
          "gtk"
        ];
        "org.freedesktop.impl.portal.Secret" = [
          "gnome-keyring"
        ];
      };
    };
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-wlr
    ];
  };
}
