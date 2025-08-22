-- Theme configuration
local theme_config = {
  current = 'nord', -- Change this to switch default theme
  
  -- Map theme names to their colorscheme commands
  theme_map = {
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
  }
}

-- Function to setup theme commands and keymaps
local function setup_theme_functionality()
  -- Create user commands for easy theme switching
  vim.api.nvim_create_user_command('ThemeList', function()
    local theme_names = {}
    for name, _ in pairs(theme_config.theme_map) do
      table.insert(theme_names, name)
    end
    table.sort(theme_names)
    print("Available themes:")
    for _, name in ipairs(theme_names) do
      print("  " .. name)
    end
  end, { desc = 'List all available themes' })
  
  vim.api.nvim_create_user_command('Theme', function(opts)
    local theme = opts.args
    if theme_config.theme_map[theme] then
      vim.cmd.colorscheme(theme_config.theme_map[theme])
      print("Switched to theme: " .. theme)
    else
      print("Theme not found: " .. theme .. ". Use :ThemeList to see available themes.")
    end
  end, {
    nargs = 1,
    complete = function()
      local theme_names = {}
      for name, _ in pairs(theme_config.theme_map) do
        table.insert(theme_names, name)
      end
      table.sort(theme_names)
      return theme_names
    end,
    desc = 'Switch to a specific theme'
  })
  
  vim.api.nvim_create_user_command('ThemeRandom', function()
    local theme_names = {}
    for name, _ in pairs(theme_config.theme_map) do
      table.insert(theme_names, name)
    end
    math.randomseed(os.time())
    local random_theme = theme_names[math.random(#theme_names)]
    vim.cmd.colorscheme(theme_config.theme_map[random_theme])
    print("Random theme: " .. random_theme)
  end, { desc = 'Switch to a random theme' })
  
  -- Theme cycling setup
  local theme_list = {}
  for name, _ in pairs(theme_config.theme_map) do
    table.insert(theme_list, name)
  end
  table.sort(theme_list)
  
  local current_index = 1
  for i, theme in ipairs(theme_list) do
    if theme == theme_config.current then
      current_index = i
      break
    end
  end
  
  -- Theme cycling functions
  local function next_theme()
    current_index = current_index % #theme_list + 1
    local next_theme_name = theme_list[current_index]
    vim.cmd.colorscheme(theme_config.theme_map[next_theme_name])
    print("Theme: " .. next_theme_name)
  end
  
  local function prev_theme()
    current_index = (current_index - 2) % #theme_list + 1
    local prev_theme_name = theme_list[current_index]
    vim.cmd.colorscheme(theme_config.theme_map[prev_theme_name])
    print("Theme: " .. prev_theme_name)
  end
  
  local function random_theme()
    local theme_names = {}
    for name, _ in pairs(theme_config.theme_map) do
      table.insert(theme_names, name)
    end
    math.randomseed(os.time())
    local random_theme_name = theme_names[math.random(#theme_names)]
    vim.cmd.colorscheme(theme_config.theme_map[random_theme_name])
    print("Random theme: " .. random_theme_name)
  end
  
  local function show_theme_list()
    vim.cmd('ThemeList')
  end
  
  -- Set up keymaps
  vim.keymap.set('n', '<leader>tn', next_theme, { desc = 'Next theme' })
  vim.keymap.set('n', '<leader>tp', prev_theme, { desc = 'Previous theme' })
  vim.keymap.set('n', '<leader>tr', random_theme, { desc = 'Random theme' })
  vim.keymap.set('n', '<leader>tl', show_theme_list, { desc = 'List themes' })
  
  -- Register with which-key if available
  local ok, wk = pcall(require, 'which-key')
  if ok then
    wk.add({
      { "<leader>t", group = "Theme" },
      { "<leader>tn", desc = "Next theme" },
      { "<leader>tp", desc = "Previous theme" },
      { "<leader>tr", desc = "Random theme" },
      { "<leader>tl", desc = "List themes" },
    })
  end
end

-- Return array of plugin specs for Lazy.nvim
return {
  -- Tokyo Night theme
  {
    'folke/tokyonight.nvim',
    lazy = true,
  },

  -- Main theme loader (using VSCode as the trigger)
  {
    'Mofiqul/vscode.nvim',
    priority = 1000,
    init = function()
      -- Always load the configured theme, regardless of which plugin triggers this
      local colorscheme = theme_config.theme_map[theme_config.current] or theme_config.current
      pcall(vim.cmd.colorscheme, colorscheme)
    end,
    config = function()
      -- Setup all theme functionality
      setup_theme_functionality()
    end
  },

  -- All other themes (lazy loaded)
  { 'EdenEast/nightfox.nvim', lazy = true },
  { 'sainnhe/everforest', lazy = true },
  { 'rafamadriz/neon', lazy = true },
  { 'rose-pine/neovim', lazy = true },
  { 'arcticicestudio/nord-vim', lazy = true },
  { 'cocopon/iceberg.vim', lazy = true },
  { 'fxn/vim-monochrome', lazy = true },
  { 'morhetz/gruvbox', lazy = true },
  { 'davidosomething/vim-colors-meh', lazy = true },
  { 'widatama/vim-phoenix', lazy = true },
  { 'andreypopp/vim-colors-plain', lazy = true },
  { 'p00f/alabaster.nvim', lazy = true },
  { 'slugbyte/lackluster.nvim', lazy = true },
  { 'rebelot/kanagawa.nvim', lazy = true },
  { 'webhooked/kanso.nvim', lazy = true },
  { "vague2k/vague.nvim", lazy = true },
  { "jnurmine/Zenburn", lazy = true },
  { 'catppuccin/nvim', name = 'catppuccin' },
  { "sainnhe/gruvbox-material", lazy = true },
  { "AlexvZyl/nordic.nvim", lazy = true },
  { "mcauley-penney/techbase.nvim", lazy = true },
}
