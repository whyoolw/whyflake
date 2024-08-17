{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
    extraConfig = "! FONT

font_family	Source Code Pro Bold
bold_font        auto
italic_font      auto
bold_italic_font auto

font_size 10.0

editor nvim

baackground_opacity 0.1

window_margin_width 15



active_tab_font_style bold
inactive_tab_font_style normal
foreground               #e0def4
background               #191724
selection_foreground     #e0def4
selection_background     #403d52

cursor                   #524f67
cursor_text_color        #e0def4

url_color                #c4a7e7

active_tab_foreground    #e0def4
active_tab_background    #26233a
inactive_tab_foreground  #6e6a86
inactive_tab_background  #191724

# black
color0   #26233a
color8   #6e6a86

# red
color1   #eb6f92
color9   #eb6f92

# green
color2   #31748f
color10  #31748f

# yellow
color3   #f6c177
color11  #f6c177

# blue
color4   #9ccfd8
color12  #9ccfd8

# magenta
color5   #c4a7e7
color13  #c4a7e7

# cyan
color6   #ebbcba
color14  #ebbcba

# white
color7   #e0def4
color15  #e0def4

";
  };
}