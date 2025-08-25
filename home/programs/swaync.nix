{pkgs, ... }:
{
home.file.".config/swaync/config.jsonc".text = ''
{
    "control-center-height": 420,
    "notification-limit": 5,
    "control-center-layer": "overlay",
    "control-center-margin-top": 0,
    "control-center-margin-left": 0,
    "control-center-margin-right": 0,
    "control-center-margin-top": 0,
    "control-center-width": 400,
    "cssPriority": "application",
    "control-center-positionX": "left",
    "control-center-positionY": "top",
    "fit-to-screen": false,
    "hide-on-action": false,
    "image-visibility": "when-available",
    "keyboard-shortcuts": true,
    "notification-icon-size": 24,
    "notification-inline-replies": true,
    "notification-visibility": {},
    "notification-window-width": 400,
    "notification-margin-bottom": 100,
    "notification-margin-left": 0,
    "control-center-margin-right": 0,
    "control-center-margin-top": 0,

    "positionX": "left",
    "positionY": "bottom",
    "script-fail-notify": false,
    "scripts": {},
    "timeout": 6,
    "timeout-critical": 0,
    "timeout-low": 5,
    "transition-time": 200,
    "widget-config": {

        "mpris": {
            "image-radius": 24,
            "image-size": 64,
            "blacklist": ["playerctld"]
        },
			"dnd": {
			"text": "dnd:w"
		},
        "title": {
            "text": "Notifications",
            "button-text": "Clear",
            "clear-all-button": true
        }
    },
    "widgets": ["dnd", "title", "notifications", "mpris"]


}


'';
home.file.".config/swaync/style.css".text = ''
@import "/home/whyoolw/.cache/wal/colors-waybar.css";



@define-color noti-border-color @color2;
@define-color noti-close-bg @color10;
@define-color noti-close-bg-hover @color13;
@define-color noti-bg-hover @color5;
@define-color noti-bg-focus @color3;
@define-color noti-urgent #BF616A;

@define-color bg-selected rgb(0, 128, 255);

* {
  color: @foreground;
  font-family: Liga SFMono Nerd Font;
}

.notification-row {
  outline: none;
}

.notification-row:focus,
.notification-row:hover {
}

.notification {
  background-color: @background;
  border: 5px solid @color0;
  border-radius: 1em;
  margin: 6px 12px;
  box-shadow: 0 0 0 1px rgba(255, 255, 255, 0.3),
    0 1px 3px 1px rgba(0, 0, 0, 0.7), 0 2px 6px 2px rgba(0, 0, 0, 0.3);
}

.critical {
  background: @noti-urgent;
  padding: 2px;
}

.notification-content {
  padding: 6px;
}

.close-button {
  background: @noti-close-bg;
  color: white;
  text-shadow: none;
  padding: 0;
  border-radius: 1em;
  margin-top: 10px;
  margin-right: 16px;
  box-shadow: none;
  border: none;
  min-width: 24px;
  min-height: 24px;
}

.close-button:hover {
  box-shadow: none;
  background: @noti-close-bg-hover;
  transition: all 0.15s ease-in-out;
  border: none;
}

.notification-default-action,
.notification-action {
  padding: 4px;
  margin: 0;
  box-shadow: none;
  background: @color0;
  border: none;
  color: white;
}

.notification-default-action:hover,
.notification-action:hover {
  -gtk-icon-effect: none;
  background: @noti-bg-hover;
}

.notification-default-action {
  border-radius: 12px;
}

/* When alternative actions are visible */
.notification-default-action:not(:only-child) {
  border-bottom-left-radius: 0px;
  border-bottom-right-radius: 0px;
}

.notification-action {
  border-radius: 0px;
  border-top: none;
  border-right: none;
}

/* add bottom border radius to eliminate clipping */
.notification-action:first-child {
  border-bottom-left-radius: 10px;
}

.notification-action:last-child {
  border-bottom-right-radius: 10px;
  border-right: 1px solid @noti-border-color;
}

.image {
}

.body-image {
  margin-top: 6px;
  background-color: white;
  border-radius: 12px;
}

/* notification setting */
.summary {
  font-weight: bold;
  background: transparent;
  color: white;
  text-shadow: none;
}

.time {
  font-weight: bold;
  background: transparent;
  color: white;
  text-shadow: none;
  margin-right: 18px;
}

.body {
  font-weight: normal;
  background: transparent;
  color: white;
  text-shadow: none;
}

/* The "Notifications" and "Do Not Disturb" text widget */
.top-action-title {
  color: white;
  text-shadow: none;
}

.control-center {
  background-color: @background;
  border: 5px solid @color1;
  border-radius: 1em;
}

.control-center-list {
  background: @background;
}

.floating-notifications {
  background: transparent;
}

/* Window behind control center and on all other monitors */
.blank-window {
  background: transparent;
}

/*** Widgets ***/

/* Title widget */
.widget-title {
  margin: 8px;
  font-weight: bold;
}

.widget-title > button {
  color: white;
  background: @color0;
  border: 3px solid @color0;
  border-radius: 12px;
}

.widget-title > button:hover {
  background: @noti-bg-hover;
}

/* DND widget */
.widget-dnd {
  margin: 8px;
}

.widget-dnd > switch {
  border-radius: 12px;
  background: @color0;
  border: 5px solid @color13;
  box-shadow: none;
}

.widget-dnd > switch:checked {
  background: @color13;
}

.widget-dnd > switch slider {
  background: @noti-bg-hover;
  border-radius: 12px;
}

/* Mpris widget */
.widget-mpris {
  /* The parent to all players */
}

.widget-mpris-player {
  padding: 8px;
  margin: 8px;
}

.widget-mpris-title {
  font-weight: bold;
}

/* Volume and Brightness Widget */
.widget-volume {
  background-color: transparent;
  padding: 4px 8px 8px 8px;
  margin: 0px 8px 8px 8px;
  border-bottom-left-radius: 12px;
  border-bottom-right-radius: 12px;
}
'';
}