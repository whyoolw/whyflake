{ ... }:
{
  programs.fish = {
    enable = true;
    shellAliases = {
      r = "ranger";
      b = "btop";
      ":q" = "exit";
    };
    functions = {
      fish_greeting = {
        body = "";
      };
    };
  };
}