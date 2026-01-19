vim.filetype.add({
  pattern = {
    [".*/waybar/config"] = "jsonc",
    [".*/waybar/.*%.json"] = "jsonc", -- Fallback für Module
    [".*/hypr/.*%.conf"] = "hyprlang", -- Falls du Hyprlang Highlighting willst
  },
})
