return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", 
        transparent_background = true, -- Passt zu deiner Kitty Config
        term_colors = true,
        integrations = {
            cmp = true,
            gitsigns = true,
            treesitter = true,
            mason = true,
        },
        -- Hier erzwingen wir Rosewater als Akzent für bestimmte Elemente
        highlight_overrides = {
            mocha = function(c)
                return {
                    -- Cursor und MatchParen in Rosewater (#f5e0dc)
                    Cursor = { bg = c.rosewater, fg = c.base },
                    MatchParen = { bg = c.rosewater, fg = c.base, style = { "bold" } },
                    -- Optional: Rahmenfarbe anpassen
                    FloatBorder = { fg = c.rosewater },
                }
            end,
        },
      })
      vim.cmd.colorscheme "catppuccin"
    end
  }
}
