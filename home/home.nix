{ curversion, ... }: 
{
  imports = [
    ./pkgs
    ./programs
  ];
  home = {
    stateVersion = "${curversion}";
    username = "whyoolw";
    homeDirectory = "/home/whyoolw";
  };
}