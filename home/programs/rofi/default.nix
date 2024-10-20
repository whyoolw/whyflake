{pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    settings = {

    };
    extraConfig = "";
  };
  home.file."/home/whyoolw/.local/share/rofi/themes/colorR.rasi".text = '' /*config*/
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
  home.file."/home/whyoolw/.config/rofi/wallpaper/style.rasi".text = '' /*****----- Configuration -----*****/
configuration {
    show-icons:                 false;
}

/*****----- Global Properties -----*****/
* {
    font:                        "JetBrains Mono Nerd Font 10";
    background:                  @background; /* @background */
    background-alt:              @background; /* @background */
    foreground:                  @foreground; /* @foreground */
    selected:                    @selected-normal-background; /* @selected-normal-background */
    active:                      @selected-active-background; /* Добавьте соответствующее значение */
    urgent:                      @urgent-background; /* Добавьте соответствующее значение */
}

@import "/home/whyoolw/.cache/wal/colors-rofi-dark.rasi"


/*
USE_BUTTONS=YES
*/

/*****----- Main Window -----*****/
window {
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       550px; 
    height:                      720px;  
    x-offset:                    0px;
    y-offset:                    0px;

    padding:                     0px;
    border:                      0px solid;
    border-radius:               10px;
    border-color:                @selected-normal-background; /* @selected-normal-background */
    cursor:                      "default";
    background-color:            @background; /* @background */
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     0px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected-normal-background; /* @selected-normal-background */
    background-color:            transparent;
    children:                    [ "inputbar", "listview", "message" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     0px;
    padding:                     100px 40px;
    background-color:            transparent;
/*    background-image:            url("~/.config/rofi/images/e.jpg", width); */
    children:                    [ "textbox-prompt-colon", "dummy","prompt" ];
}

dummy {
    background-color:            transparent;
}

textbox-prompt-colon {
    enabled:                     false;
    expand:                      false;
    str:                         "W";
    padding:                     12px;
    border-radius:               5px;
    background-color:            @urgent-background; /* @urgent-background */
    text-color:                  @foreground; /* @foreground */
}

prompt {
    enabled:                     true;
    padding:                     12px;
    border-radius:               5px;
    background-color:            @selected-active-background; /* @selected-active-background */
    text-color:                  @foreground; /* @foreground */
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     5;
    lines:                       5; 
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    spacing:                     8px;
    margin:                      15px;
    background-color:            transparent;
    cursor:                      "default";
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    padding:                     1px 1px;
    border-radius:               10px;
    background-color:            @alternate-normal-background; /* @alternate-normal-background */
    text-color:                  @foreground; /* @foreground */
    cursor:                      pointer;
}

element-text {
    background-color:            transparent;
    text-color:                  transparent;
    cursor:                      inherit;
}

element selected.normal {
    background-color:            @selected-normal-background; /* @selected-normal-background */
    text-color:                  @foreground; /* @foreground */
    str:                         "";
}

element-icon {
    background-color:            transparent;
    padding:                     0px;
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      0px;
    padding:                     15px;
    border-radius:               0px;
    background-color:            @alternate-normal-background; /* @alternate-normal-background */
    text-color:                  @foreground; /* @foreground */
}

textbox {
    background-color:            inherit;
    text-color:                  inherit;
    vertical-align:              0.5px;
    horizontal-align:            0.5px;
}

 '';
  home.file."/home/whyoolw/.config/rofi/wallpaper/wallpaper.sh".text = ''

WALLPAPERS_DIR="/home/whyoolw/Pictures/wallpaper"

# find image size to display (very slow)
#echo $(identify -format '%[fx:w]x%[fx:h]\' ~/Pictures/$A 2>/dev/null)

build_theme() {
    rows=$1
    cols=$1
    icon_size=$3

    echo "element{orientation:vertical;}element-text{horizontal-align:0.5;}element-icon{size:$icon_size.0000em;}listview{lines:$rows;columns:$cols;}"
}

theme="$HOME/.config/rofi/wallpaper/style.rasi"
#theme="/home/whyoolw/.local/share/rofi/themes/wallpapers.rasi"

ROFI_CMD="rofi -show file-browser -dmenu -i -show-icons -theme-str $(build_theme 3 5 6) -theme ${theme}"

choice=$(\
    ls --escape "$WALLPAPERS_DIR" | \
        while read A; do echo -en "$A\x00icon\x1f$WALLPAPERS_DIR/$A\n"; done | \
        $ROFI_CMD -p "󰸉  Wallpaper" \
)

wallpaper="$WALLPAPERS_DIR/$choice"

if [ "$XDG_CURRENT_DESKTOP" = "asd" ]; then
    echo "$wallpaper"
else
    swww img -t any --transition-bezier 0.0,0.0,1.0,1.0 --transition-duration 1 --transition-step 255 --transition-fps 144 "$wallpaper" && \
    ln -sf "$wallpaper" "$WALLPAPERS_DIR"/0current.png && wal -i "$wallpaper"
fi

exit 1
 '';

}