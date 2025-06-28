{pkgs, ... }:
let
    theme = "$HOME/.config/rofi/wallpaper/style.rasi";
in
{
  home.file."/home/whyoolw/.local/share/rofi/themes/colorR.rasi".text = ''
 /*config*/
configuration {
    show-icons:                 true;
    drun-display-format:        "{name}";
}

* {
    font: "JetBrainsMono 12";
}

@import "/home/whyoolw/.cache/wal/colors-rofi-dark.rasi"

/*window*/
window {
    width: 800px;
    border: 0px solid;
    border-color: @background; /* @background */
    border-radius: 12px;
    background-color: @background; /* @background */
    padding: 0px;
}

/*container!*/
mainbox {
    spacing: 10px;
    padding: 20px;
    children: [ "inputbar", "listview" ];
    background-color: @background; /* @background */
}

/*inputbar*/

/*-conteiner inputbar*/
inputbar {
    spacing: 10px;
    padding: 5px;
    border-radius: 20px;
    background-color: @background; /* @background */
    text-color: @foreground; /* @foreground */
    children: [ "textbox-prompt-colon", "entry" ];
}

/*-icons*/
textbox-prompt-colon {
    expand: false;
    background-color: inherit;
    text-color: inherit;
    vertical-align: 0.5;
}

/*-promt*/
entry {
    background-color: inherit;
    text-color: inherit;
    placeholder: "Search...";
    placeholder-color: inherit;
}

/*list elemens*/
listview {
    columns: 2;
    lines: 6;
    scrollbar: false;
    spacing: 10px;
    text-color: @foreground; /* @foreground */
    background-color: transparent;
    border: 0px;
}

/*elements*/
element {
    spacing: 15px;
    padding: 8px;
    border-radius: 10px;
    background-color: @background; /* @background */
    text-color:@foreground; /* @foreground */
}

element.normal.normal {
    background-color: @normal-background; /* @background */
    text-color:@normal-foreground; /* @foreground */
}

element.alternate.normal {
    background-color: @alternate-normal-background; /* @background */
    text-color: @alternate-normal-foreground; /* @foreground */
}

element.selected.normal {
    background-color: @selected-normal-background; /* #8C9172 */
    text-color: @selected-normal-foreground; /* @foreground */
}

element-icon {
    background-color: transparent;
    text-color: inherit;
    size: 32px;
}
element-text {
    background-color: transparent;
    text-color:  inherit;
    vertical-align: 0.5;
}

'';
}
