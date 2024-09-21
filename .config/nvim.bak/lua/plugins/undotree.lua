return {
  "mbbill/undotree",
    config = function()
    vim.keymap.set('n', '<leader>z', vim.cmd.UndotreeToggle, { desc = "Open undotree"})
    -- vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon add file" })
  end
}

