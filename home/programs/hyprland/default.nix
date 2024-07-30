{pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.over-hyprland;
    xwayland.enable = true;
    extraConfig = ''
    monitor=eDP-1, 1920x1080@60, 1920x0,1
#monitor=HDMI-A-1, 1280x1024@60, 0x0,1
monitor=HDMI-A-1, 1920x1080@60, 0x0, 1
monitor=DP-2, 1920x1080@60, 0x0, 1
exec-once = hyprlock
exec-once = waybar
exec-once = swaync
exec-once = hyprctl setcursor "Bibata-Modern-Ice" 24
exec-once = wl-paste -t text --watch clipman store --max-items=60 --histpath="~/.local/share/clipman.json"
#exec-once = /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 
exec-once = swww init 
#exec-once = kdeconnect-indicator
#sex exec-once = ~/.config/hypr/scripts/auto.sh

env = HYPRCURSOR_THEME,Bibata-Modern-Ice
env = HYPRCURSOR_SIZE,24
#env = XCURSOR_THEME, Bibata-Modern-Ice
#env = XCURSOR_SIZE,24
#env = GTK_THEME,RosePine-Main-BL-LB


#source = ./rule.conf
#source = ./bind.conf

input {
    	kb_layout = us,ru
    	kb_options = grp:caps_toggle
    	follow_mouse = 1
touchpad {
        natural_scroll = no
    }
    	sensitivity = -0.9
    	#sensitivity = -0.1


}

general {
	gaps_in = 5
	gaps_out = 10
	border_size = 1
	col.active_border = rgba(C1C1C1ff)
	col.inactive_border = rgba(333333ff)
	layout = dwindle
}

decoration {
    blur {
        enabled = yes
        size = 4
        passes = 3 
        new_optimizations = yes
    }
    	rounding = 16
    	drop_shadow = yes
	shadow_range = 30
    	shadow_render_power = 4
    	col.shadow = rgba(00000080)
	#dim_inactive = 1
	#dim_strength = 0.2
}

animations {
    	enabled = yes
    	bezier = myBezier, 0.05, 0.9, 0.1, 1.00
    	animation = windows, 1, 4, myBezier, popin 75%
    	animation = border, 1, 3, myBezier
    	animation = fade, 1, 3, myBezier
    	animation = workspaces, 1, 3, default, slidefade
}


dwindle {

    	pseudotile = yes #  
    	preserve_split = yes # 
    }

master {
   
    	#new_is_master = 1
    	no_gaps_when_only = true
}


gestures {
   
    	workspace_swipe = on
}

$LAPTOP_KB_ENABLED = true
	device {
  	name = synaptics-tm3336-004
  	enabled = $LAPTOP_KB_ENABLED
}

$LAPTOP_ENABLED = true
	device {
  	name = at-translated-set-2-keyboard
	enabled = $LAPTOP_ENABLED
}

$mainMod = SUPER

bind = $mainMod , W, exec, /home/whyoolw/.config/rofi/wallpaper/wallpaper.sh
bind = $mainMod SHIFT, Q, killactive,
bind = $mainMod SHIFT, SPACE, togglefloating, 
bind = $mainMod, RETURN, exec, kitty 
bind = $mainMod SHIFT, RETURN, exec,[tiled] kitty
bind = $mainMod, E, exec, kitty sh -c ranger
bind = $mainMod SHIFT, E, exec, nemo
bind = $mainMod, F, fullscreen
bind = $mainMod, D, exec, rofi -show drun
bind = $mainMod, I, exec, rofi -show  emoji -show emoji
bind=$mainMod,C,exec,hyprpicker -a && -u critical -t 4000 "$(wl-paste)"
bind = $mainMod, V, exec, clipman pick --tool="rofi" --tool-args="-show drun -monitor 1" --max-items=30
bind = $mainMod SHIFT, S, exec,  hyprshot -m region -z
bind = $mainMod, P, exec, .config/rofi/powermenu/powermenu.sh
bind = $mainMod, SPACE, exec, sh -c "if pactl list sources | grep -q 'Mute: yes'; then pactl set-source-mute @DEFAULT_SOURCE@ toggle && notify-send 'Micro ON'; else pactl set-source-mute @DEFAULT_SOURCE@ toggle && notify-send 'Micro OFF'; fi"
#bind = $mainMod, L, exec, hyprlock
bind = $mainMod, O, exec,  hyprctl keyword '$LAPTOP_KB_ENABLED' "false" -r
bind = $mainMod SHIFT, O, exec,  hyprctl keyword '$LAPTOP_KB_ENABLED' "true" -r
bind = $mainMod, S, exec, swaync-client -t -sw
bind = $mainMod SHIFT, R, exec, pkill waybar && hyprctl dispatch exec waybar


bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10


bind = $mainMod, mouse_down, workspace, e-1
bind = $mainMod, mouse_up, workspace, e+1
bind = $mainMod,Tab,workspace, e+1          
bind = $mainMod SHIFT ,Tab,workspace, e-1   
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow
bind = $mainMod CTRL, left, resizeactive,-50 0
bind = $mainMod CTRL, right, resizeactive,50 0
bind = $mainMod CTRL, up, resizeactive,0 -50
bind = $mainMod CTRL, down, resizeactive,0 50

bind = $mainMod, A, togglespecialworkspace, a
bind = $mainMod SHIFT, A, movetoworkspace, special:a

bind = $mainMod, X, togglespecialworkspace, z
bind = $mainMod SHIFT, X, movetoworkspace, special:z

bind = $mainMod CTRL, A, movetoworkspace,e+0

bind = ALT, Tab, cyclenext, 
bind = ALT, Tab, bringactivetotop, 
bind = ALT SHIFT, Tab, cyclenext, prev
bind = ALT SHIFT, Tab, bringactivetotop, 
#binde=, XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
#binde=, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
binde = , XF86AudioRaiseVolume, exec, .config/swaync/volume.sh --inc #v up
binde = , XF86AudioLowerVolume, exec, .config/swaync/volume.sh --dec #v down
bind=, XF86AudioPlay, exec, playerctl play-pause
bind=, XF86AudioPause, exec, playerctl play-pause
bind=, XF86AudioNext, exec, playerctl next
bind=, XF86AudioPrev, exec, playerctl previous
bind=,XF86MonBrightnessDown,exec,brightnessctl set 30%-
bind=,XF86MonBrightnessUp,exec,brightnessctl set +30%

bind = $mainMod, right, moveactive, 50 0
bind = $mainMod, left, moveactive, -50 0
bind = $mainMod, up, moveactive, 0 -50
bind = $mainMod, down, moveactive, 0 50

bind = $mainMod SHIFT, right, resizeactive, 10 0
bind = $mainMod SHIFT, left, resizeactive, -10 0
bind = $mainMod SHIFT, up, resizeactive, 0 -10
bind = $mainMod SHIFT, down, resizeactive, 0 10

bind = $mainMod , h, movewindow, l
bind = $mainMod , l, movewindow, r
bind = $mainMod , k, movewindow, u 
bind = $mainMod , j, movewindow, d


bind = CTRL, F11,pass,^(steam)$

windowrule=float,Rofi
windowrule=float,pavucontrol
windowrule=float,imv
windowrule=float,mpv
windowrule=float,veracrypt
windowrule=float,kitty
windowrule=float,nemo
windowrule=center,mpv
windowrule=pin,org.gnome.Calculator
windowrule=size 1536 864, mpv
windowrule=float,org.gnome.FileRoller
windowrule=size 1000 600, nemo
windowrule=size 1000 600, kittywindowrulev2 = float, class:(polkit-gnome-authentication-agent-1)
windowrulev2 = center, class:(polkit-gnome-authentication-agent-1)
#windowrule = workspace 2 silent,org.telegram.desktop
#windowrule = workspace 2 silent,vesktop
windowrule = workspace 6 silent, title: anime-cli
windowrule = workspace special:x,waypaper-engine

windowrulev2 = float, class:(polkit-gnome-authentication-agent-1)
windowrulev2 = center, class:(polkit-gnome-authentication-agent-1)

#layerrule = blur, swaync-control-center
#layerrule = blur, swaync-notification-window
#layerrule = ignorezero, swaync-control-center
#layerrule = ignorezero, swaync-notification-window

#layerrule = ignorealpha 0.1, swaync-control-center
#layerrule = ignorealpha 0.1, swaync-notification-window

workspace = special:a,gapsin:50,gapsout:70
workspace = special:z,gapsin:50,gapsout:70
'';
  };
}
