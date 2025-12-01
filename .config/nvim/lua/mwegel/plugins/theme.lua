-- Simple theme configuration for Neovim

-- Change this to switch colorscheme
local colorscheme = 'default'

-- Theme map for easy switching
local theme_map = {
  ['tokyonight-night'] = 'tokyonight-night',
  ['tokyonight-storm'] = 'tokyonight-storm',
  ['tokyonight-moon'] = 'tokyonight-moon',
  ['tokyonight-day'] = 'tokyonight-day',
  vscode = 'vscode',
  nightfox = 'nightfox',
  everforest = 'everforest',
  neon = 'neon',
  iceberg = 'iceberg',
  monochrome = 'monochrome',
  ['rose-pine'] = 'rose-pine',
  nord = 'nord',
  gruvbox = 'gruvbox',
  meh = 'meh',
  phoenix = 'phoenix',
  plain = 'plain',
  alabaster = 'alabaster',
  lackluster = 'lackluster',
  ['kanagawa-wave'] = 'kanagawa-wave',
  ['kanagawa-dragon'] = 'kanagawa-dragon',
  kanso = 'kanso',
  vague = 'vague',
  zenburn = 'zenburn',
  ['catppuccin'] = 'catppuccin',
  ['catppuccin-latte'] = 'catppuccin-latte',
  ['catppuccin-frappe'] = 'catppuccin-frappe',
  ['catppuccin-macchiato'] = 'catppuccin-macchiato',
  ['catppuccin-mocha'] = 'catppuccin-mocha',
  ['gruvbox-material'] = 'gruvbox-material',
  ['nordic'] = 'nordic',
  ['techbase'] = 'techbase',
  ['sonokai'] = 'sonokai',
  ['monokai-pro'] = 'monokai-pro',
}

return {
  -- Default theme (loads first)
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true,
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {
          -- bright_green = "#e8e8e8",
          -- bright_blue = "#7aa8d6",
          -- bright_purple = "#e8e8e8",
          -- bright_orange = "#5d82a8",
        },
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
      vim.cmd.colorscheme(colorscheme)
      -- vim.cmd('highlight String gui=italic')
      -- vim.cmd('highlight Emphasis gui=italic')
      -- vim.cmd('highlight Comment gui=italic')
      -- vim.cmd('highlight Folded gui=italic')
    end
  },
  -- Other themes (lazy loaded)
  { 'catppuccin/nvim',                name = 'catppuccin', lazy = true },
  { 'Mofiqul/vscode.nvim',            lazy = true },
  { 'folke/tokyonight.nvim',          lazy = true },
  { 'EdenEast/nightfox.nvim',         lazy = true },
  { 'sainnhe/everforest',             lazy = true },
  { 'rafamadriz/neon',                lazy = true },
  { 'cocopon/iceberg.vim',            lazy = true },
  { 'fxn/vim-monochrome',             lazy = true },
  { 'rose-pine/neovim',               name = 'rose-pine',  lazy = true },
  { 'arcticicestudio/nord-vim',       lazy = true },
  { 'davidosomething/vim-colors-meh', lazy = true },
  { 'widatama/vim-phoenix',           lazy = true },
  { 'andreypopp/vim-colors-plain',    lazy = true },
  { 'p00f/alabaster.nvim',            lazy = true },
  { 'slugbyte/lackluster.nvim',       lazy = true },
  { 'rebelot/kanagawa.nvim',          lazy = true },
  { 'webhooked/kanso.nvim',           lazy = true },
  { "vague2k/vague.nvim",             lazy = true },
  { "jnurmine/Zenburn",               lazy = true },
  { 'catppuccin/nvim',                name = 'catppuccin', lazy = true },
  { "sainnhe/gruvbox-material",       lazy = true },
  { "AlexvZyl/nordic.nvim",           lazy = true },
  { "mcauley-penney/techbase.nvim",   lazy = true },
  { "sainnhe/sonokai",                lazy = true },
  { "loctvl842/monokai-pro.nvim",     lazy = true },
  { "craftzdog/solarized-osaka.nvim", lazy = true },
  { "sainnhe/edge",                   lazy = true },
}
