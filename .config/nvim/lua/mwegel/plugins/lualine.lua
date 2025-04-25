return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local theme = require("lualine.themes.iceberg")
    -- Farben für die Mode-Sektion (Sektion "a" zeigt den Modus an)
    theme.normal.a.fg = "#5e81ac"
    theme.normal.a.bg = "#5e81ac"  -- z.B. nordblau
    theme.normal.a.gui = "bold"

    theme.insert.a.fg = "#a3be8c"
    theme.insert.a.bg = "#a3be8c"  -- grüner Ton für Insert
    theme.insert.a.gui = "bold"

    theme.visual.a.fg = "#b48ead"
    theme.visual.a.bg = "#b48ead"  -- lila für Visual
    theme.visual.a.gui = "bold"

    theme.replace.a.fg = "#bf616a"
    theme.replace.a.bg = "#bf616a"  -- rot für Replace
    theme.replace.a.gui = "bold"

    -- Inaktive Fenster (optional)
    theme.inactive.a.fg = "#888888"
    theme.inactive.a.bg = "none"
    theme.inactive.a.gui = "none"
    
    -- Hintergrund aller Bereiche transparent setzen
    for _, mode in pairs(theme) do
      for section, colors in pairs(mode) do
        colors.bg = "none"
      end
    end

    require("lualine").setup({
      options = {
        theme = theme,
        component_separators = '',
        section_separators = '',
      },
    })
  end,
}

--
-- return {
--   "nvim-lualine/lualine.nvim",
--   opts = function(_, opts)
--     -- dein Theme usw.
--
--     -- Hide statusline on alpha dashboard
--     vim.api.nvim_create_autocmd("User", {
--       pattern = "AlphaReady",
--       callback = function()
--         vim.cmd([[ set laststatus=0 ]])
--       end,
--     })
--
--     vim.api.nvim_create_autocmd("BufUnload", {
--       pattern = "*",
--       callback = function()
--         vim.cmd([[ set laststatus=3 ]])
--       end,
--     })
--   end,
-- }
--
