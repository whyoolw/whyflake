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