{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fastfetch
    pavucontrol
    google-chrome
    vim
    git
    gh 
    materialgram
    xdg-utils
    imv
    mpv
    hyprpicker
    rofi-wayland
    qbittorrent
    btop
    veracrypt
    swww
    clipman
    waybar
    hyprshot
    grim
    hyprpicker
    vscode
    vesktop
    nautilus
    nemo
    gnome-tweaks
    gpu-screen-recorder-gtk
    #over-spotify
    spicetify-cli
    #wl-clipboard
    cliphist
    xclip
    gnome-disk-utility
    ntfs3g
    xdragon
  ];
}