#!/bin/bash

# Installiere Pakete, falls sie fehlen
# --needed überspringt bereits installierte Pakete
sudo pacman -S --needed \
    fish \
    neovim \
    kitty \
    wofi \
    yazi \
    waybar \
    hyprland \
    git \
    ripgrep \
    fd \
    ttf-jetbrains-mono-nerd # Wichtig für Icons
