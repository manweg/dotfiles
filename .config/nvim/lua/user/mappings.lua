-- Apps
vim.keymap.set('n', '<Leader>e', ':Ex<Return>', { desc = 'Open Netrw' })
vim.keymap.set('n', '<Leader>o', ':Ex<Return>', { desc = 'Open Netrw' })
vim.keymap.set('n', '<Leader>g', ':LazyGit<CR>', { desc = 'Open LazyGit' })
-- Buffer
vim.keymap.set('n', '<tab>', ':bnext<CR>', { noremap = true, silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<s-tab>', ':bprev<CR>', { noremap = true, silent = true, desc = 'Previousbuffer' })
-- Moving
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Halbe Seite nach unten und Cursor zentrieren' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Halbe Seite nach oben und Cursor zentrieren' })
-- New tab
vim.keymap.set('n', 'te', ':tabedit')
-- vim.keymap.set('n', '<tab>', ':tabnext<Return>')
-- vim.keymap.set('n', '<s-tab>', ':tabprev<Return>')
-- Split window
vim.keymap.set('n', 'ss', ':split<Return>', { desc = 'Split' })
vim.keymap.set('n', 'sv', ':vsplit<Return>', { desc = 'Vsplit' })
-- Move window
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sl', '<C-w>l')
