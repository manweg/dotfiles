return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local disable_winbar_cb = function(args)
      return require("heirline.conditions").buffer_matches({
        buftype = { "nofile", "prompt", "help", "quickfix", "terminal" },
        filetype = {
          "^git.*",
          "fugitive",
          "Trouble",
          "dashboard",
          "TelescopePrompt",
          "TelescopeResults",
          "TelescopePreview",
          "lazygit",
          "lazy",
          -- "oil", -- allow winbar for oil.nvim
        },
      }, args.buf)
    end

    opts.winbar = {
      condition = function()
        return not disable_winbar_cb({ buf = 0 })
      end,

      init = function(self)
        if vim.bo.filetype == "oil" then
          -- Strip oil:// prefix to get clean absolute path
          self.display_path = vim.fn.expand("%:p"):gsub("^oil://", "")
        else
          self.display_path = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
        end
      end,

      {
        provider = function(self)
          return self.display_path ~= "" and self.display_path or "[No Name]"
        end,
        hl = { bold = true },
      },
    }

    return opts
  end,
}
