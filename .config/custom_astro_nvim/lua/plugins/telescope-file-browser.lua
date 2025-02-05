return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    vim.keymap.set("n", "<space>fd", ":Telescope file_browser<CR>", { desc = "Open Telescop-file-browser" })
    -- open file_browser with the path of the current buffer
    vim.keymap.set(
      "n",
      "<space>fd",
      ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
      { desc = "Open Telescop-file-browser" }
    )
    -- Alternatively, using lua API
    vim.keymap.set(
      "n",
      "<space>fd",
      function() require("telescope").extensions.file_browser.file_browser() end,
      { desc = "Open Telescop-file-browser" }
    )
  end,
}
