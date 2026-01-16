local opt = vim.opt

opt.number = true          -- Zeilennummern anzeigen
opt.relativenumber = true  -- Relative Nummern
opt.clipboard = "unnamedplus" -- System-Zwischenablage nutzen
opt.termguicolors = true   -- Echte Farben (Wichtig für Theme)

opt.ignorecase = true      -- Groß-/Kleinschreibung ignorieren beim Suchen...
opt.smartcase = true       -- ...außer man tippt Großbuchstaben
opt.signcolumn = "yes"     -- Linke Spalte immer anzeigen (verhindert Text-Wackeln)

opt.tabstop = 4            -- Tabs sind 4 Leerzeichen
opt.shiftwidth = 4
opt.expandtab = true       -- Tabs in Leerzeichen umwandeln

-- Provider deaktivieren, die wir nicht nutzen
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

-- Optional: Node Provider deaktivieren (meist unnötig für Lua-Configs)
-- Mason funktioniert trotzdem, solange 'node' im Terminal verfügbar ist.
vim.g.loaded_node_provider = 0
