#!/bin/bash

echo "🚀 Starte Installation..."

# 1. Basics & Build-Tools installieren (Official Repos)
# 'base-devel' ist zwingend nötig, um yay/paru zu bauen
sudo pacman -S --needed \
    git \
    base-devel \
    fish \
    zoxide \
    cliphist \
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
    resvg \
    ttf-jetbrains-mono-nerd \
    lua51 \
    unzip \
    python-pynvim \
    qt6-svg \
    qt6-declarative \
    qt5-quickcontrols2 \
    keychain

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
echo "🎉 Installation abgeschlossen!"
