-- Neue Keybindings für Buffer-Wechsel
-- vim.keymap.set('n', '<C-n>', ':bnext<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-p>', ':bprev<CR>', { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-o>", ":Neotree float<CR>", { desc = "Open Neotree float", noremap = true, silent = true })
-- Mappe Control-o auf den Befehl ":Neotree float"
vim.api.nvim_set_keymap(
  "n",
  "<Leader>o",
  ":Neotree toggle float<CR>",
  { desc = "Open Neotree float", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>e",
  ":Neotree toggle float<CR>",
  { desc = "Open Neotree float", noremap = true, silent = true }
)
