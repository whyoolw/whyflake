{ lib
, pkgs
, config
, ... 
}:
{
  programs.fuzzel = {
    enable = true;
    package = pkgs.fuzzel;
    settings ={
      main = {
        font =  lib.mkForce "Liberation Mono:size=15";
        terminal = "${pkgs.kitty}/bin/kitty";
        layer = "overlay";
        dpi-aware = "no";
        fields = "name";
        width = "21";
      };
        colors = {
        background = lib.mkForce "000000ff";
        text = lib.mkForce "ffffffff";
        border = lib.mkForce "5f8787ff";
        selection = lib.mkForce "5f8787ff";
        selection-text = lib.mkForce "000000ff";
      };
      # border = {
      #   width = "21";
      # };
    };
  };
}