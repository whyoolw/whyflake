{ pkgs, lib, ... }:
{
home.file.".config/ranger/rifle.cfg".text = ''
ext pdf, has evince, X, flag f = evince "$@"
ext img, has imv, X, flag f = imv "$@"
ext jpg, has imv, X, flag f = imv "$@"
ext jpeg, has imv, X, flag f = imv "$@"
ext png, has imv, X, flag f = imv "$@"
ext zip, has file-roller, X, flag f = file-roller "$@"
ext 7z, has file-roller, X, flag f = file-roller "$@"
ext tar, has file-roller, X, flag f = file-roller "$@"
ext mp4, has mpv, X, flag f = mpv "$@"
ext mkv, has mpv, X, flag f = mpv "$@"
ext webm, has mpv, X, flag f = mpv "$@"
ext mp3, has mpv, X, flag f = mpv "$@"
ext mov, has mpv, X, flag f = mpv "$@"
ext m4a, has mpv, X, flag f = mpv "$@"
ext svg, has imv, X, flag f = imv "$@"
ext rar, has file-roller, X, flag f = file-roller "$@"
ext jsonc, has nvim, flag f = nvim "$@"
label editor = "$EDITOR" -- "$@"
label pager  = "$PAGER" -- "$@"'';

  programs.ranger = {
    enable = true;
    settings = {
      preview_images_method = "kitty";
      show_hidden = "true";
      default_linemode = "devicons";
    };
mappings = {
  gc = "cd ~/.config";
  #gC = "cd ~/.config/hypr/";
  #gW = "cd ~/.config/waybar/";
  gb = "cd /mnt/bine4";
  gB = "cd /run/media/whyoolw/";
  gr = "cd ~/.config/ranger";
  gd = "cd ~/Downloads";
  gD = "cd ~/Documents";
  gp = "cd ~/Pictures";
  gv = "cd ~/Videos";
  gm = "cd /mnt/";
  gM = "cd /run/media/";
  gP = "cd /mnt/bine4/others/rt4fht";
  gt = "cd ~/Templates";
  gl = "cd ~/.local/share";
  gw = "cd ~/Pictures/wallpaper";
  zz = "shell zip archive.zip %s";
  zt = "shell tar -cvzf archive.tar.gz %s";
  zx = "shell 7z a archive.7z %s";
  D = "shell mv %s /home/whyoolw/.local/share/Trash/files/";
  F = "shell file-roller %s";
  X = "shell du -sh %s && sleep 1";
  x = "shell nvim %s";
  Q = "shell ./%s";
  C = "sort atime";
  P = "shell nemo .";
 "<C-v>" = "mark_files all=True val=False";
 "<C-W>" = "shell swww img  -t simple --transition-duration 100 --transition-step 255 --transition-fps 60 %s & wal -i %s";
  pz = "extract %s";
  "<C-F>" = "shell fzf";
  "<C-e>" = "shell /mnt/bine4/PortProton/data/scripts/start.sh %s --and-exit";
  "<C-d>" = "shell dragon-drop -a -x %p --and-exit";
};

  };
# home.file.".config/ranger/rc.conf".text = lib.mkForce ''


# set preview_images true
# set preview_images_method kitty
# default_linemode devicons
# set show_hidden true
# #set preview_script /home/whyoolw/.config/ranger/scope.sh

# # map cd
# map gc cd ~/.config
# map gC cd ~/.config/hypr/
# map gW cd ~/.config/waybar/
# map gb cd /mnt/bine4
# map gB cd /run/media/whyoolw/
# map gr cd ~/.config/ranger
# map gd cd ~/Downloads
# map gD cd ~/Documents
# map gp cd ~/Pictures
# map gv cd ~/Videos
# map gm cd /mnt/
# map gM cd /run/media/
# map gP cd /mnt/bine4/others/rt4fht
# map gt cd ~/Templates
# map gl cd ~/.local/share
# map gw cd ~/Pictures/wallpaper
# map zz shell zip archive.zip %s
# map zt shell tar -cvzf archive.tar.gz %s
# map zx shell 7z a archive.7z %s
# #map D delete %s
# map D shell mv %s /home/whyoolw/.local/share/Trash/files/
# map F shell file-roller %s
# map X shell du -sh %s && sleep 1
# map x shell nvim %s
# #map o shell ./%s
# map P shell nemo .
# copymap zi Z
# map <C-F> shell fzf 

# map <C-e> shell /mnt/bine4/PortProton/data/scripts/start.sh %s --and-exit
# map <C-d> shell dragon-drop -a -x %p --and-exit

# map pz extract %s

# '';
  
}
