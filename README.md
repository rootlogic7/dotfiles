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

Dieser Prozess installiert `chezmoi`, lädt die Configs herunter und **installiert automatisch fehlende Pakete** (wie Kitty, Yazi, Neovim) über ein Skript.

1.  **CachyOS installieren** und System updaten.
2.  **Terminal öffnen** und folgenden Block ausführen:

```bash
# 1. Chezmoi installieren
sudo pacman -S chezmoi

# 2. Dotfiles initialisieren und anwenden
# Dies fragt nach dem Sudo-Passwort, um Programme via pacman zu installieren
chezmoi init --apply DEIN_GITHUB_USERNAME
```


## 🛠 Workflow & Abkürzungen

Ich nutze Fish Abbreviations, um den Umgang mit `chezmoi` zu beschleunigen.

| Abkürzung | Original Befehl | Beschreibung |
| :--- | :--- | :--- |
| `cm` | `chezmoi` | Basisbefehl |
| `cme <file>` | `chezmoi edit <file>` | Öffnet die Datei im Source-State (Neovim) |
| `cma` | `chezmoi apply` | Wendet Änderungen im Home-Verzeichnis an |
| `cmd` | `chezmoi diff` | Zeigt Unterschiede vor dem Apply an |
| `cmu` | `chezmoi update` | Holt Updates von Git (Pull) und wendet sie an |
| `cm add <file>` | `chezmoi add <file>` | Fügt eine neue Datei zum Tracking hinzu |



## 🔄 Git Sync (Backup)

In der `config.fish` ist eine Custom Function `cmcp` definiert, um Änderungen schnell zu sichern. Sie führt `git add`, `git commit` und `git push` in einem Schritt aus.

**Nutzung:**

```fish
cmcp "Beschreibung der Änderung"
```


## 📂 Struktur

* **Shell:** Fish (Konfiguration in `.config/fish`)
* **Funktionen:** Eigene Fish-Funktionen liegen in `~/.config/fish/functions/` oder direkt in der `config.fish`.
* **Skripte:** Installationsskripte (wie `run_once_...`) liegen im `chezmoi`-Source-Verzeichnis.
* **Ignorierte Dateien:** Gesteuert über `.chezmoiignore`.



## 💡 Tipps

### Neue Programme hinzufügen
1.  Programm installieren und lokal konfigurieren.
2.  Config-Datei zu chezmoi hinzufügen:
    ```fish
    cm add ~/.config/program/configfile
    ```
3.  Falls gewünscht, das Paket in `run_once_install_packages.sh` ergänzen, damit es auf neuen Rechnern automatisch installiert wird.

### Änderungen verwerfen
Wenn du lokal etwas geändert hast, aber die Version aus dem Repo wiederherstellen willst:
```fish
chezmoi apply --force
```
