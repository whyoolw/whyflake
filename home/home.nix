{ curversion, ... }: 
{
  imports = [
    ./pkgs
  ];
  home = {
    stateVersion = "${curversion}";
    username = "whyoolw";
    homeDirectory = "/home/whyoolw";
  };
}