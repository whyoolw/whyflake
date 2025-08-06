{pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
  };
  home.file.".config/waybar/config.jsonc".text = ''
 // -*- mode: jsonc -*-
{	
		"width": 1400,
		"height": 25,
    		"layer": "top",
    		"position": "top",
		"exclusive": true,
		"passthrough": false,
		"margin-top": 6,
		"spacing": 8,
		"fixed-center": true,
		"reload_style_on_change": true,
		"modules-left": [
			"custom/notifications",
			"custom/sep",
			"tray",
			"custom/sep",
			"niri/language",
			"niri/window" ],
		"modules-center": [
			"clock",
			],
		"modules-right": [
			"privacy","custom/sep",
			"pulseaudio","custom/sep",
			"backlight","custom/sep",
			"battery","custom/sep",
			"network",

			],
 		/*"custom/sep": {
			"format": "|",
			"tooltip": false,
		},*/
"niri/window": {
    "format": "{app_id}",
    "icon": true,
    "icon-size": 14,
    "seperate-outputs": false,
"rewrite": {
	"io.github.kukuruzka165.materialgram": "materialgram",
	"com.obsproject.Studio": "obs",
	"com.github.th_ch.youtube_music": "ytm",
},
  },

"niri/workspaces": {
  "disable-scroll": false,
  "show-special": false,
	"format": "{icon}",
		"format-icons": {
		"active": "1",
		"default": "0"
		},
},
	"privacy": {
			"icon-spacing": 10,
			"icon-size": 12,
			"transition-duration": 250,
			"modules": [
				{
					"type": "screenshare",
					"tooltip": true,
					"tooltip-icon-size": 24
				},
				{
					"type": "audio-in",
					"tooltip": true,
					"tooltip-icon-size": 24
				}
			],
			"ignore-monitor": true,
			"ignore": [
				{
					"type": "screenshare",
					"name": "obs"
				}
			]
		},
	"network": {
        	"format-wifi": "󰤯",
        	"format-ethernet": "󰈀",
        	"format-linked": "󰈀",
        	"format-disconnected": "󰤮",
          "on-click": "python ~/.config/rofi/network/network.py",
	  "on-click-right": "/mnt/bine4/scripts/wallpaperkonachan.bash",
	},

 
  "custom/notifications": {
    "tooltip": false,
    "format": "{icon}",
    "format-icons": {
      "notification": "<span foreground='#DB4740'></span>",
      "none": "",
      "dnd-notification":"<span foreground='#DB4740'></span>",
      "dnd-none": "",
    },
    "return-type": "json",
    "exec-if": "which swaync-client",
    "exec": "swaync-client -swb",
    "on-click": "swaync-client -t -sw",
    "on-click-right": "swaync-client -d -sw",
    "escape": true
  },
	"tray": {
		"icon-size": 14,
		"spacing": 5,
	},
    
		"clock": {
			"format": "{:%H:%M:%S  %d.%m.%y}",
			"tooltip-format": "{:%OI:%M:%S}",
   		"timezone": "Europe/Riga",
    		"interval": 1,
		"tooltip": "false",
     //   	"format-alt": "{:%d.%m.%y}",
    "on-click-right": "bash ~/.config/rofi/calendar/calendar.sh"

		},

	
     "pulseaudio": {
		"format": "{volume} {format_source}",
        	"format-muted": "MUTE",
		"format-source": "1",
		"format-source-muted": "0",
		"format-icons": {
			"default": ["1", "2", "3"]},
			"on-click": "pavucontrol",
    			"tooltip-format": "{volume}%"
  },
 
        	
    	"niri/language": {
        	"format": "{}",
			"format-en": "󰑂 ",
			"format-ru": "󰑀 "
			    	},
 	"battery": {
		"interval": 5,
		"states": {
			"warning": 40,
			"critical": 20,
	},
		"format": "{capacity}",
		"format-icons": ["0", "1", "2", "3", "4"],
		"format-time": "{H}h {M}m",
		"tooltip-format": "{capacity} {power}w {time}",
		"tooltip-format-charging": "{capacity}% (charging) {time}",
},


    "backlight": {
    "device": "intel_backlight",
"format": "{percent}",
    "format-icons": ["1","2","3"],
    "on-scroll-up":   "brightnessctl s 1%+",
    "on-scroll-down": "brightnessctl s 1%-",
    "on-click-right": "brightnessctl s 0"
},

}

'';

home.file.".config/waybar/style.css".text = ''
* {
	font-family: Google Sans;
	font-weight: bold;
	border-radius: 12;
	font-size: 14px;
}

window#waybar {
	background-color: @background;
	transition-property: background-color;
	transition-duration: .5s;
}

@import "/home/whyoolw/.cache/wal/colors-waybar.css";

#workspaces {
	font-size: 11pt;
		padding: 0 0 0 0;
	margin: 0 0 0 0;
}

#workspaces button {
    border-radius: 16px;
    color: @color11;
    background-color: @color4;
        transition: all 0.8s ease-in-out;
		padding: 0 0 0 0;
	margin: 0 0 0 0;

}

#workspaces button:hover {
	background-color: @color2;
	color: @color2;
	border-radius: 4;
	transition: all 0.3s ease-in-out;
		padding: 0 0 0 0;
	margin: 0 0 0 0;

}

#workspaces button.active {
    background-color: @color2;
    padding: 0px 10px 0 10;
    border-radius: 16px;
        transition: all .4s ease-in-out;

}

#window{
	background: @background;
	color: @color6;
	padding: 0 2 0 2;
	margin: 0 0 0 0;
}
#tray {
	background: @background;
	color: @color9;
	padding: 0 2 0 2;
	margin: 0 0 0 0;

}
#battery {
	background: @background;
	color: @color6;
	padding: 0 0 0 0;
}

#network {
	background: @background;
	color: @color6;
	padding: 0 8 0 0;
}

#custom-notifications {
	color: @color2;
	margin: 0 2 0 8;
}



#pulseaudio {
	background: @background;
	color: @color6;
	margin: 0 0 0 0;

}

#clock {
	background: @background;
	color: @color6;
	font-size: 16px;
}

#language {
	background: @background;
	color: @color6;
}
#backlight {
	background: @background;
	color: @color6;
	margin: 0 0 0 0;

}

#privacy{
	background: @background;
	color: @color6;
	margin: 2 4 0 1;
}

#custom-sep {
	background: @background;
	color: @color6;
}
'';


}
