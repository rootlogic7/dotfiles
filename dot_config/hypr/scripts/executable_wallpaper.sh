#!/bin/bash

# Pfad zu deinem Video
VIDEO="$HOME/.local/share/backgrounds/wallpaper.mp4"

# Beende alte Wallpaper-Prozesse (swww oder alte mpvpaper Instanzen)
killall mpvpaper
killall swww-daemon

# --- MONITOR 1: Ultrawide (DP-1) ---
# Zeigt das Video im Vollbild (Loop, kein Audio)
# Durch "panscan=1.0" wird es gezoomt/beschnitten, falls das Seitenverhältnis nicht exakt passt
mpvpaper -o "no-audio --loop-playlist shuffle --panscan=1.0" DP-1 "$VIDEO" &

# --- MONITOR 2: Side Monitor (HDMI-A-1) ---
# Hier wird das Video vermutlich stark beschnitten (Center Crop), da 21:9 Video auf 16:9 Monitor
# Wir nutzen auch hier panscan, damit keine schwarzen Balken entstehen.
mpvpaper -o "no-audio --loop-playlist shuffle --panscan=1.0" HDMI-A-1 "$VIDEO" &
