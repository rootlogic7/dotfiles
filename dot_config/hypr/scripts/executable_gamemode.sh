#!/bin/bash
# Checkt den aktuellen Status der Animationen
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')

if [ "$HYPRGAMEMODE" = 1 ] ; then
    # --- GAME MODE ON (Performance) ---
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword decoration:rounding 0"
    
    # Beende ressourcenhungrige Hintergrundprozesse
    killall swww-daemon
    killall waybar
    
    notify-send "🚀 Game Mode ACTIVATED" 
else
    # --- GAME MODE OFF (Aesthetic) ---
    # Lädt die Config neu, um Defaults wiederherzustellen
    hyprctl reload
    
    # Starte Hintergrundprozesse neu
    swww-daemon &
    waybar &
    
    notify-send "✨ Normal Mode RESTORED"
fi
