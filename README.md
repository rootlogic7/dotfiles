<div align="center">

# 🍧 Dotfiles

**Performance meets Aesthetics**
<br>
Eine hochoptimierte Konfiguration für **CachyOS**, verwaltet mit **chezmoi**.

![CachyOS](https://img.shields.io/badge/OS-CachyOS-1e1e2e?style=for-the-badge&logo=archlinux&logoColor=f5e0dc)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-1e1e2e?style=for-the-badge&logo=hyprland&logoColor=f5e0dc)
![Theme](https://img.shields.io/badge/Theme-Catppuccin_Mocha-1e1e2e?style=for-the-badge&logo=catppuccin&logoColor=f5e0dc)

</div>

---

### 🚀 Über dieses Setup

Dieses Repository enthält meine persönliche Systemkonfiguration ("Dotfiles"). Der Fokus liegt auf maximaler Performance, einheitlichem Design und **Geräteunabhängigkeit**.

Das System ist so aufgebaut, dass es sich dynamisch an die Hardware anpasst – egal ob **Gaming-Desktop** (Nvidia), **Laptop** (Intel/AMD) oder **Raspberry Pi**.

**Die Kern-Philosophie:**
* **Speed:** Nutzung von CachyOS-Kernel-Optimierungen und Hyprland.
* **Look:** Durchgängiges **Catppuccin Mocha** Theme mit **Rosewater** Akzenten.
* **Code:** Shell-Scripting mit Fish, Editing mit Neovim, Terminal mit Kitty.

## 🛠 Tech Stack

Hier ist eine Übersicht der Kern-Komponenten, die durch dieses Setup konfiguriert werden:

| Kategorie | Tool | Beschreibung & Features |
| :--- | :--- | :--- |
| **Window Manager** | [Hyprland](https://hyprland.org/) | Tiling WM mit flüssigen Animationen und Blur-Effekten. |
| **Status Bar** | [Waybar](https://github.com/Alexays/Waybar) | Dynamische Leiste, angepasst an das Catppuccin Theme. |
| **Terminal** | [Kitty](https://sw.kovidgoyal.net/kitty/) | GPU-beschleunigt, Ligaturen-Support, Image Preview. |
| **Shell** | [Fish](https://fishshell.com/) | Mit [Starship](https://starship.rs/) Prompt, Autosuggestions und Syntax Highlighting. |
| **Editor** | [Neovim](https://neovim.io/) | Vollständige IDE-Experience (LSP, Treesitter, Lazy.nvim). |
| **Launcher** | [Rofi](https://github.com/lbonn/rofi) | App-Launcher (Wayland-Fork), Clipboard-History, Menüs. |
| **Notifications** | [SwayNC](https://github.com/ErikReider/SwayNotificationCenter) | Benachrichtigungscenter mit "Do Not Disturb" Modus. |
| **File Manager** | [Yazi](https://github.com/sxyazi/yazi) | Terminal-basiert, extrem schnell, mit Bildvorschau. |
| **Monitoring** | [Btop](https://github.com/aristocratos/btop) | Ressourcen-Monitor im passenden Look. |
| **Login Manager** | [SDDM](https://github.com/sddm/sddm) | Angepasstes Theme beim Systemstart. |

## ⚡ Installation & Setup

Die Einrichtung ist auf einer frischen **CachyOS** Installation vollständig automatisiert.

### One-Liner
Öffne ein Terminal und führe folgende Befehle aus:

```bash
# 1. System aktualisieren & Chezmoi installieren
sudo pacman -Syu git chezmoi

# 2. Dotfiles initialisieren und anwenden
chezmoi init --apply rootlogic7
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
