return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = false,
        theme = "auto",
        component_separators = "",
        section_separators = "",
        disabled_filetypes = { "alpha", "dashboard", "NvimTree", "oil" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "filename",
            path = 3,
            symbols = {
              modified = '[modified]',
              readonly = '[readOnly]',
              unnamed = '[No Name]',
            }
          }
        },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })

    -- Make lualine transparent
    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = function()
        for _, group in ipairs({
          "lualine_a_normal", "lualine_b_normal", "lualine_c_normal",
          "lualine_x_normal", "lualine_y_normal", "lualine_z_normal",
          "lualine_a_insert", "lualine_b_insert", "lualine_c_insert",
          "lualine_a_visual", "lualine_b_visual", "lualine_c_visual",
          "lualine_a_replace", "lualine_b_replace", "lualine_c_replace",
          "lualine_a_command", "lualine_b_command", "lualine_c_command",
          "lualine_a_inactive", "lualine_b_inactive", "lualine_c_inactive",
          "lualine_x_inactive", "lualine_y_inactive", "lualine_z_inactive",
        }) do
          vim.api.nvim_set_hl(0, group, { bg = "none" })
        end
      end,
    })

    -- Apply immediately
    vim.cmd("doautocmd ColorScheme")
  end,
}
