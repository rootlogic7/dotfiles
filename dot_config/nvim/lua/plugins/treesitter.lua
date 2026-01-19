return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function ()
      -- SICHERHEITSABFRAGE:
      -- Versuche das Modul zu laden. Wenn es fehlschlägt, brich leise ab,
      -- statt Neovim crashen zu lassen.
      local status_ok, configs = pcall(require, "nvim-treesitter.configs")
      if not status_ok then
        return
      end

      configs.setup({
          ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "bash", "markdown", "toml", "json", "jsonc", "hyprlang", "css", "fish", "ini", "diff", "regex" },
          highlight = { enable = true },
          indent = { enable = true },
      })
    end
  }
}
