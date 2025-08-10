return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
    local function filepath_from_git_root()
      local filepath = vim.fn.expand("%:p")
      local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
      if git_root and filepath:sub(1, #git_root) == git_root then
        return filepath:sub(#git_root + 2)
      end
      return vim.fn.expand("%:~:.") -- fallback to relative path
    end

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
          filepath_from_git_root,
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
