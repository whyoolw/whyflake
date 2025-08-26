{ curversion, ... }: 
{
  imports = [
    #./pkgs
    ./programs
    ./gtk
    ./enviroment/xdg
    ./packages.nix
    ];
  home = {
    stateVersion = "${curversion}";
    username = "whyoolw";
    homeDirectory = "/home/whyoolw";
    sessionVariables = {
      XCURSOR_THEMES = "Bibata-Modern-Ice";
      XCURSOR_SIZE = "20";
    };
  };
}