{ curversion, ... }: 
{
  imports = [
    ./pkgs
    ./programs
    ./gtk
    ./enviroment/xdg
    ];
  home = {
    stateVersion = "${curversion}";
    username = "whyoolw";
    homeDirectory = "/home/whyoolw";
    sessionVariables = {
      XCURSOR_THEMES = "Bibata-Modern-Ice";
      XCURSOR_SIZE = "18";
    };
  };
}