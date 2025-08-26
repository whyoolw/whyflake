{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
    font = {
      size = 10;
      name = "Source Code Pro Bold";
    };
    settings = {
      window_margin_width = 15;
      cursor_trail = 3;
      hide_window_decorations = true;
      include = "/home/whyoolw/.cache/wal/colors-kitty.conf";
      editor = "nvim";
      active_tab_font_style = "bold";
      inactive_tab_font_style = "normal";
    };
  };
}