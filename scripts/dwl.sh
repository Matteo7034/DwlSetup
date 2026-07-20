#!/bin/bash


export XDG_CURRENT_DESKTOP=wlroots

pkill -f wireplumber
pkill -f pipewire
pkill -f pipewire-pulse
sleep 1

pipewire & pipewire-pulse & wireplumber &
sleep 1

(sleep 1 && /usr/libexec/xdg-desktop-portal-wlr) &


(sleep 2 && swaybg -m fill -i ~/DwlSetup/assets/gentoodark.png) &
(sleep 2 && waybar) &
# Avvia dwl dentro una sessione DBus
exec dbus-run-session dwl &

sleep 0.3

export DISPLAY=:0
