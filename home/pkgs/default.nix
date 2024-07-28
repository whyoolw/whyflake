{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fastfetch
    kitty
    pavucontrol
    google-chrome
    vim
    git
    gh 
    _64gram
    xdg-utils
    imv
    mpv
    hyprpicker
    rofi-wayland
    ranger
    nwg-look
    nemo 
    discord
    qbittorrent
    btop
    gnome-tweaks
    bibata-cursors
    veracrypt
  ];
}