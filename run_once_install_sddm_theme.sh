#!/bin/bash
# --- SDDM Catppuccin Mocha Rosewater Theme Installation ---
echo "🎨 Installiere SDDM Theme (Catppuccin Mocha Rosewater)..."

# 1. Variablen definieren
SDDM_THEME_VERSION="v1.1.2"
THEME_DIR_NAME="catppuccin-mocha-rosewater"
ZIP_NAME="${THEME_DIR_NAME}-sddm.zip"

DOWNLOAD_URL="https://github.com/catppuccin/sddm/releases/download/${SDDM_THEME_VERSION}/${ZIP_NAME}"
TARGET_DIR="/usr/share/sddm/themes"

# 2. Temp-Dir erstellen
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR" || exit

# 3. Download
echo "⬇️  Lade $ZIP_NAME herunter..."
if curl -L -O "$DOWNLOAD_URL"; then
    echo "✅ Download erfolgreich."
else
    echo "❌ Download fehlgeschlagen! URL prüfen."
    exit 1
fi

# 4. Entpacken und ÜBERPRÜFEN
unzip -q "$ZIP_NAME"

# --- NEU: Sicherheitscheck ---
if [ ! -d "$THEME_DIR_NAME" ]; then
    echo "❌ FEHLER: Das erwartete Verzeichnis '$THEME_DIR_NAME' wurde nach dem Entpacken nicht gefunden!"
    echo "   Der Inhalt des Zip-Archivs scheint anders zu sein als erwartet."
    echo "   Gefundene Dateien:"
    ls -1
    exit 1
fi
# -----------------------------

# 5. Verschieben
if [ ! -d "$TARGET_DIR" ]; then
    echo "Ordner $TARGET_DIR wird erstellt..."
    sudo mkdir -p "$TARGET_DIR"
fi

# Altes Theme entfernen (falls Update)
if [ -d "$TARGET_DIR/$THEME_DIR_NAME" ]; then
    echo "🗑️  Entferne alte Version..."
    sudo rm -rf "$TARGET_DIR/$THEME_DIR_NAME"
fi

# Verschieben
sudo mv "$THEME_DIR_NAME" "$TARGET_DIR/"
echo "✅ Theme installiert in: $TARGET_DIR/$THEME_DIR_NAME"

# 6. Aufräumen
cd ..
rm -rf "$TEMP_DIR"
