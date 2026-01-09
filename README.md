# CachyOS Dotfiles

Meine persönlichen Konfigurationsdateien, verwaltet mit [chezmoi](https://www.chezmoi.io/).

## 🧩 Komponenten

Diese Dotfiles sind modular aufgebaut. Der Kern basiert auf **CachyOS (Arch)**, lässt sich aber anpassen.

| Kategorie | Programm | Beschreibung |
| :--- | :--- | :--- |
| **OS** | CachyOS (Arch) | Basis-System (optimiert für Performance) |
| **Shell** | Fish | Inkl. Aliases und Custom Functions |
| **Editor** | Neovim | Mein Haupt-Editor (LSP, Treesitter, etc.) |
| **Window Manager** | Hyprland | *Tiling Window Manager (Wayland)* |
| **Status Bar** | Waybar | *Leiste für Hyprland* |
| **Terminal** | Alacritty / Kitty | *(Hier dein bevorzugtes Terminal eintragen)* |
| **Launcher** | Rofi / Wofi | *App-Launcher & Menü* |

> **Hinweis:** Nicht installierte Programme werden von `chezmoi` ignoriert oder können über `.chezmoiignore` ausgeschlossen werden.

## 🚀 Bootstrap (Installation auf neuem Rechner)

Ein einziger Befehl reicht, um alles auf einem frischen System zu installieren:

```fish
# 1. Chezmoi installieren
sudo pacman -S chezmoi

# 2. Repo klonen und anwenden
# Ersetze DEIN_GITHUB_USERNAME mit deinem tatsächlichen Usernamen
chezmoi init --apply DEIN_GITHUB_USERNAME
```


## 🛠 Workflow

Ich nutze fish Abbreviations und Funktionen, um den Workflow zu beschleunigen.

Wichtige Befehle

Befehl          Original              Beschreibung
cm   	        chezmoi         	  Basisbefehl
cme <file>	    chezmoi edit <file>	  Öffnet Datei im Source-State (Neovim)
cma	            chezmoi apply	      Wendet Änderungen im Home-Verzeichnis an
cmd	            chezmoi diff	      Zeigt Unterschiede vor dem Apply an
cmu	            chezmoi update	      Holt Updates von Git (Pull) und wendet sie an
cm add <file>	chezmoi add <file>    Fügt eine neue Datei zum Tracking hinzu



## Git Sync (Backup)

Um Änderungen zu sichern und auf GitHub zu pushen, nutze ich die custom function cmcp:

```fish
cmcp "Beschreibung der Änderung"
# Führt add, commit und push in einem Schritt aus
```



## 📂 Struktur

    Shell: Fish (Config in .config/fish)

    Editor: Neovim (als Standard gesetzt via Fish Config)

    Terminal: (Hier ggf. Kitty/Alacritty eintragen, falls genutzt)



##  💡 Notizen

    Neue Programme hinzufügen: Erst konfigurieren, dann cm add ~/.config/program/configfile ausführen.

    Fish Functions: Eigene Funktionen (wie cmcp) liegen in ~/.config/fish/functions/ und werden via Autoload geladen.
