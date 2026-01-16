-- ~/.config/nvim/lua/config/keymaps.lua

local map = vim.keymap.set

-- Empfehlung: Mit <Space>w speichern
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Datei speichern" })

-- Empfehlung: Mit <Space>q schließen
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Fenster schließen" })

-- Fenster-Navigation mit STRG + hjkl (statt STRG+w dann h)
map("n", "<C-h>", "<C-w>h", { desc = "Gehe zum linken Fenster" })
map("n", "<C-j>", "<C-w>j", { desc = "Gehe zum unteren Fenster" })
map("n", "<C-k>", "<C-w>k", { desc = "Gehe zum oberen Fenster" })
map("n", "<C-l>", "<C-w>l", { desc = "Gehe zum rechten Fenster" })
