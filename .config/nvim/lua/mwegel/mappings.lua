-- Apps
vim.keymap.set('n', '<Leader>l', ':LazyGit<CR>', { desc = 'Open LazyGit' })

-- [[ kickstart Keymaps ]]
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


-- vim.keymap.set('n', '<tab>', ':bnext<CR>', { noremap = true, silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<s-tab>', ':bprev<CR>', { noremap = true, silent = true, desc = 'Previousbuffer' })
vim.keymap.set('n', '<tab>', ':b#<CR>', { noremap = true, silent = true, desc = 'Previousbuffer' })
-- Moving
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Halbe Seite nach unten und Cursor zentrieren' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Halbe Seite nach oben und Cursor zentrieren' })
-- New tab
vim.keymap.set('n', 'te', ':tabedit')
-- Split window
vim.keymap.set('n', 'ss', ':split<Return>', { desc = 'Split' })
vim.keymap.set('n', 'sv', ':vsplit<Return>', { desc = 'Vsplit' })
-- Move window
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sl', '<C-w>l')

-- Session
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


-- Buffer
-- Falls :b# keymap nicht praktikabel, dann folgendes Plugin:
-- {
--   "kwkarlwang/bufjump.nvim",
--   opts = {},
--   keys = {
--     { "<S-Tab>", function() require("bufjump").backward() end, desc = "Zurück im Buffer-Verlauf" },
--     { "<Tab>", function() require("bufjump").forward() end, desc = "Vor im Buffer-Verlauf" },
--   },
-- }



