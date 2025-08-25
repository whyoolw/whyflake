{ config, lib, ... }:
{
  config =  {
    programs.fastfetch = {
      enable = true;
      settings = {
        logo = {
          type = "auto";
          source = "~/.config/fastfetch/squirtle.png";
          height = 17;
          width = 30;
          padding = {
            top = 2;
            left = 3;
          };
        };
        modules = [
          "break"
          {
            type = "custom";
            format = "┌───────────────────────────────────────────┐";
          }
          {
            type = "host";
            key = "│  ";
            keyColor = "green";
            format = "{family}";
          }
          {
            type = "cpu";
            key = "│ ├";
            keyColor = "green";
            format = "{name}";
          }
          {
            type = "gpu";
            key = "│ ├󰍛";
            keyColor = "green";
            format = "{name}";
          }
          {
            type = "memory";
            key = "│ ├󰍛";
            keyColor = "green";
          }
          {
            type = "disk";
            key = "└ └";
            keyColor = "green";
          }
          {
            type = "custom";
            format = "└───────────────────────────────────────────┘";
          }
          "break"
          {
            type = "custom";
            format = "┌───────────────────────────────────────────┐";
          }
          {
            type = "os";
            key = "│  ";
            keyColor = "yellow";
            format = "{pretty-name}";
          }
          {
            type = "kernel";
            key = "│ ├";
            keyColor = "yellow";
            format = "{release}";
          }
          {
            type = "packages";
            key = "│ ├󰏖";
            keyColor = "yellow";
            #format = "{pacman} pcmn {flatpak-system} fltpk";
          }
          {
            type = "shell";
            key = "│ ├";
            keyColor = "yellow";
            format = "{pretty-name}";
          }
          {
            type = "custom";
            format = "│ │";
            outputColor = "magenta";
          }
          {
            type = "de";
            key = " DE";
            keyColor = "blue";
            format = "{pretty-name}";
          }
          {
            type = "wm";
            key = "│ ├";
            keyColor = "blue";
            format = "{pretty-name}";
          }
          {
            type = "terminal";
            key = "│ ├󰉼";
            keyColor = "blue";
            format = "{pretty-name}";
          }
          {
            type = "uptime";
            key = "└ └";
            keyColor = "blue";
            format = "{hours} horse+{minutes} minets";
          }
          {
            type = "custom";
            format = "└───────────────────────────────────────────┘";
          }
          {
            type = "colors";
            paddingLeft = 15;
            symbol = "circle";
          }
        ];
      };
    };
  };
}