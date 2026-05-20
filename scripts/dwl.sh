#!/bin/bash

# Imposta risoluzione + 60Hz + scaling (modifica questa opzione se hai un monitor diverso)
wlr-randr --output eDP-1 --mode 2880x1620@60 --scale 2 &

# Avvia waybar DOPO che dwl è partito
(sleep 1 && waybar -c ~/DwlSetup/waybar/config.jsonc -s ~/DwlSetup/waybar/style.css) &
# Avvia in wlsunset con un ritardo di 2 secondi
(sleep 2 && wlsunset -l 43.96 -L 10.17 -t 3000 -T 4000) &
(sleep 2 && swaybg -m fill -i ~/DwlSetup/assets/babyturtles.jpg) &
# Avvia dwl dentro una sessione DBus
exec dbus-run-session dwl
