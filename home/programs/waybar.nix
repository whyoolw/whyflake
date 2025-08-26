{pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
	  style = ./waybar-css.nix;
    settings = {
      mainBar = {
        width = 1400;
        height = 25;
        layer = "top";
        position = "top";
        exclusive = "true";
        passthrough = false;
        margin-top = 6;
        spacing =  8;
        fixed-center = true;
        reload_style_on_change = true;
        modules-left = [
          "custom/notifications"
          "tray"
          "niri/language"
          "niri/window"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "privacy"
          "pulseaudio"
          "backlight"
          "battery"
          "network"
        ];
        "niri/window" = { 
          format = "{app_id}";
          icon = true;
          icon-size = 14;
          seperate-outputs = false;
          rewrite = {
            io.github.kukuruzka165.materialgram = "materialgram";
            com.obsproject.Studio = "obs";
            com.github.th_ch.youtube_music = "ytm";
          };
        };

        "privacy" = {
          icon-spacing = 10;
          icon-size = 12;
          transition-duration = 250;
          modules = [
            { type = "screenshare"; tooltip = false; }
            { type = "audio-in"; tooltip = false; }
          ];
        };
        "network" = {
          format-wifi = "󰤯";
          format-ethernet = "󰈀";
          format-linked = "󰈀";
          format-disconnected = "󰤮";
          #on-click": "python ~/.config/rofi/network/network.py",
          #on-click-right": "/mnt/bine4/scripts/wallpaperkonachan.bash",
        };
        "clock" = {
          format = "{:%H:%M:%S  %d.%m.%y}";
          tooltip-format = "{:%OI:%M:%S}";
          timezone = "Europe/Riga";
          interval = 1;
          tooltip = "false";
          #format-alt = "{:%d.%m.%y}"";
          on-click-right = "gsimplecal";
        };
        "tray" = { 
          icon-size = 14;
          spacing = 5;
        };
        "pulseaudio" = {
          format = "{volume} {format_source}";
          format-muted = "MUTE";
          format-source = "1";
          format-source-muted = "0";
          format-icons = {
            default = ["1" "2" "3"];
          };
          on-click = "pavucontrol";
          tooltip-format = "{volume}%";
        };
        "niri/language" = {
          format = "{}";
          format-en = "󰑂 ";
          format-ru = "󰑀 ";
        };
        "custom/notifications" = {
          tooltip = false;
          format = "{icon}";
          format-icons = {
            notification = "<span foreground='#DB4740'></span>";
            none = "";
            dnd-notification = "<span foreground='#DB4740'></span>";
            dnd-none = "";
          };
          return-type = "json";
          exec-if = "which swaync-client";
          exec = "swaync-client -swb";
          on-click = "swaync-client -t -swb";
          on-click-right = "swaync-client -d -swb";
          escape = true;
        };
        "battery" = {
          interval = 5;
          states = {
            warning = 40;
            critical = 20;
          };
          format = "{capacity}";
          format-charging = "{capacity}% (charging) {time}";
          format-icons = ["0" "1" "2" "3" "4"];
          format-time = "{H}h {M}m";
          #tooltip = false;
        };
        "backlight" = {
          format = "{percent}"; 
          format-icons = ["1" "2" "3"];
          device = "intel_blacklight";
          on-scroll-up = "brightnessctl s 1%+";
          on-scroll-down = "brightnessctl s 1%-";
          on-click-right = "brightnessctl s 0";
        };
      };
    };
  };
}