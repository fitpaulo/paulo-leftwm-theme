#!/bin/sh

# Exact match to your Hyprland keybind (fcitx5-remote -t) + the dunst notification you like.
# This is what Hypr is "using" — no separate script, just the raw toggle command in hyprland.conf.

fcitx5-remote -t

STATE=$(fcitx5-remote)

if [ "$STATE" = "2" ]; then
    notify-send --icon=input-keyboard -t 2000 "🇯🇵 Japanese (Mozc)" "IME ACTIVE"
else
    notify-send --icon=input-keyboard -t 1500 "🇺🇸 English (US)" "IME OFF"
fi

