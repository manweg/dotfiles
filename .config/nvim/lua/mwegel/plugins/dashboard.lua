local cowsay = 
[[
 ________
< Hello! >
 --------
     \
      \
          oO)-.                       .-(Oo
         /__  _\                     /_  __\
         \  \(  |     ()~()         |  )/  /
          \__|\ |    (-___-)        | /|__/
          '  '--'    ==`-'==        '--'  '
]]

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup({
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
          { desc = ' Files', group = 'Label', action = 'Telescope find_files', key = 'f' },
          { desc = ' Apps', group = 'DiagnosticHint', action = 'Telescope app', key = 'a' },
          { desc = ' dotfiles', group = 'Number', action = 'Telescope dotfiles', key = 'd' },
        },
        packages = { enable = true },
        footer = {},
        project = { enable = true, limit = 8 },
        mru = { enable = true, limit = 10 },
      },
      hide = {
        statusline = false,
        tabline = false,
        winbar = false,
      },
      preview = {
        command = 'cowsay',
        file_path = '',
        file_height = 20,
        file_width = 100,
      },
    })

    -- Cowsay als Header setzen
    require('dashboard').setup({
      config = {
        header = vim.split(cowsay, '\n'),
      },
    })
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
