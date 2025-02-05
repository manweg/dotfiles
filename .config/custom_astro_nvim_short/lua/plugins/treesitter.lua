-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "xml",
      -- add more arguments for adding more treesitter parsers
    },
    highlight = {
      enable = true, -- Highlighting aktivieren
    },
    indent = {
      enable = true, -- Indentierung aktivieren
    }
  },
}
