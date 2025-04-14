require("mwegel")

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'yaml',
  command = 'setlocal filetype=helm',
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})




vim.cmd [[
  highlight NeoTreeNormal guibg=NONE ctermbg=NONE
  highlight NeoTreeNormalNC guibg=NONE ctermbg=NONE
  highlight NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE
]]

-- Basic Settings
-- vim.opt_local.cursorcolumn = true -- Highlight the current column
vim.opt_local.shiftwidth = 2   -- Number of spaces to use for each step of (auto)indent
vim.opt_local.softtabstop = 2  -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt_local.tabstop = 2      -- Number of spaces that a <Tab> in the file counts for
vim.opt_local.expandtab = true -- Expand tab to 2 spaces


-- load the session for the current directory
vim.keymap.set('n', '<leader>Ss', function()
  require('persistence').load()
end, { desc = 'Load session of current dir' })

--vim.keymap.set('n', '<s-tab>', ':bprev<CR>', { noremap = true, silent = true, desc = 'Previousbuffer' })

-- select a session to load
vim.keymap.set('n', '<leader>SS', function()
  require('persistence').select()
end, { desc = 'Select session to load' })

-- load the last session
vim.keymap.set('n', '<leader>Sl', function()
  require('persistence').load { last = true }
end, { desc = 'Load last session' })

-- stop Persistence => session won't be saved on exit
vim.keymap.set('n', '<leader>Sd', function()
  require('persistence').stop()
end, { desc = 'Stop persistence' })


vim.opt.fillchars:append { eob = ' ' }

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
