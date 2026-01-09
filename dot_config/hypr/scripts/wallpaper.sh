#!/bin/bash

# Pfad zu deinem Bild/GIF
WALLPAPER="$HOME/.local/share/backgrounds/wallpaper.gif"

# Prüfen, ob swww läuft, sonst starten
if ! pgrep -x swww-daemon > /dev/null; then
    swww-daemon &
    sleep 1
fi

# Das Wallpaper setzen mit Übergangseffekt (Wipe)
# --transition-type: wipe, grow, outer, wave
# --transition-pos: top-right (Startpunkt)
swww img "$WALLPAPER" \
    --transition-type grow \
    --transition-pos 0.854,0.977 \
    --transition-step 90 \
    --transition-fps 60
