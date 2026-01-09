#!/bin/bash

echo "🚀 Starte Installation..."

# 1. Basics & Build-Tools installieren (Official Repos)
# 'base-devel' ist zwingend nötig, um yay/paru zu bauen
sudo pacman -S --needed \
    git \
    base-devel \
    fish \
    neovim \
    kitty \
    rofi-wayland \
    yazi \
    waybar \
    hyprland \
    hyprlock \
    hypridle \
    swww \
    swaync \
    starship \
    btop \
    fastfetch \
    imagemagick \
    ripgrep \
    fd \
    ffmpeg \
    ttf-jetbrains-mono-nerd

# 2. Automatische Installation von YAY (falls nicht vorhanden)
if ! command -v yay &> /dev/null; then
    echo "⚠️  Yay nicht gefunden. Installiere es automatisch..."
    
    # Temporäres Verzeichnis
    cd $(mktemp -d)
    
    # Klonen und Bauen
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    
    echo "✅ Yay erfolgreich installiert!"
else
    echo "✅ Yay ist bereits installiert."
fi

# 3. AUR Pakete installieren (mit yay)
echo "📦 Installiere AUR Pakete (mpvpaper)..."
yay -S --needed mpvpaper

echo "🎉 Installation abgeschlossen!"
