source /usr/share/cachyos-fish-config/cachyos-config.fish

set -gx EDITOR nvim
set -gx VISUAL nvim

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# Chezmoi Abkürzungen
abbr --add cm 'chezmoi'
abbr --add cma 'chezmoi apply'
abbr --add cme 'chezmoi edit'
abbr --add cmd 'chezmoi diff'  # Zeigt dir, was sich geändert hat, bevor du apply machst
abbr --add cmu 'chezmoi update' # Holt Änderungen von Git und wendet sie an (pull + apply)

# Git Workflow für Chezmoi (optional, geht auch manuell)
function cmcp
    chezmoi git add .
    chezmoi git -- commit -m "$argv"
    chezmoi git push
end

if status is-interactive
    # Starship Prompt aktivieren (ersetzt den Standard Prompt)
    starship init fish | source
    zoxide init fish | source
    # Maskottchen beim Start anzeigen
    fastfetch
end
