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



## ⌨️ Keybindings

Der `SUPER` Key (Windows-Taste) ist der Haupt-Modifier für fast alle Aktionen.

| Taste | Aktion | Beschreibung |
| :--- | :--- | :--- |
| **Apps & System** | | |
| `SUPER` + `ENTER` | **Terminal** | Öffnet Kitty |
| `SUPER` + `SPACE` | **Launcher** | Öffnet Rofi (App Suche) |
| `SUPER` + `Y` | **Files** | Öffnet Yazi File Manager |
| `SUPER` + `B` | **Browser** | Öffnet Firefox |
| `SUPER` + `C` | **Close** | Schließt das aktive Fenster |
| `SUPER` + `V` | **Float** | Macht ein Fenster schwebend (Floating) |
| `SUPER` + `M` | **Exit** | Loggt aus Hyprland aus |
| **Navigation** | | |
| `SUPER` + `Pfeiltasten` | **Fokus** | Wechselt den Fokus zwischen Fenstern |
| `SUPER` + `1-0` | **Workspace** | Wechselt zu Workspace 1-10 |
| `SUPER` + `SHIFT` + `1-0` | **Move** | Verschiebt Fenster auf Workspace 1-10 |
| **Features** | | |
| `SUPER` + `G` | **Game Mode** | Deaktiviert Animationen/Blur für Performance |
| `SUPER` + `R` | **Resize** | Startet Resize-Modus (Pfeile zum Ändern, ESC zum Beenden) |
