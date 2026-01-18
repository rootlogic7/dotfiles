source /usr/share/cachyos-fish-config/cachyos-config.fish

set -gx EDITOR nvim
set -gx VISUAL nvim

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
#    # smth smth
end

# Chezmoi Abkürzungen
abbr --add cm 'chezmoi'
abbr --add cma 'chezmoi apply'
abbr --add cme 'chezmoi edit'
abbr --add cmd 'chezmoi diff'
abbr --add cmu 'chezmoi update'

# Git Workflow für Chezmoi
function cmcp
    chezmoi git add .
    chezmoi git -- commit -m "$argv"
    chezmoi git push
end

if status is-interactive
    # --- SSH Agent starten ---
    # Startet den Agenten und lädt Key (id_ed25519)
    # --quiet: Unterdrückt unnötige Ausgaben
    eval (keychain --eval --quiet --agents ssh id_ed25519)
    # Starship Prompt
    starship init fish | source
    # Zoxide
    zoxide init fish | source
    # Fastfetch
    fastfetch
end
