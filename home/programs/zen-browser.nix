{ inputs, ... }:

{
  imports = [
    inputs.zen-browser.homeModules.beta
    #inputs.zen-browser.homeModules.twilight
    #inputs.zen-browser.homeModules.twilight-official
  ];

  programs.zen-browser.enable = true;
}