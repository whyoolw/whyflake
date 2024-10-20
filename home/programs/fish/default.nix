{ ... }:
{
  programs.fish = {
    enable = true;
    shellAliases = {
      r = "ranger";
      b = "btop";
      ":q" = "exit";
      resp = "systemctl --user restart pipewire pipewire-pulse wireplumber";
    };
    functions = {
      fish_greeting = {
        body = "";
      };
    };
  };
}