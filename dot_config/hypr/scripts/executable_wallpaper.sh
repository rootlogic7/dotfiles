#!/bin/bash

# Pfad zu deinem statischen Bild (JPG/PNG bevorzugt für Performance)
WALLPAPER="$HOME/.local/share/backgrounds/3440x1440__00014_.png"

# 1. Daemon starten, falls er nicht läuft
if ! pgrep -x "swww-daemon" > /dev/null; then
    swww-daemon &
    sleep 0.5
fi

# 2. Wallpaper setzen (für alle Monitore)
# --transition-type grow (oder simple, fade) sieht gut aus
# --transition-fps 60 sorgt für flüssigen Übergang
swww img "$WALLPAPER" --transition-type grow --transition-pos 0.5,0.5 --transition-step 90
