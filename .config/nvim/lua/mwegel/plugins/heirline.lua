return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    opts.winbar = {
      init = function(self)
        self.filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
      end,
      {
        provider = function(self)
          return self.filename ~= "" and self.filename or "[No Name]"
        end,
        hl = { bold = true },
      },
    }

    -- optional: disable statusline, tabline if you don’t need them
    opts.statusline = nil
    opts.tabline = nil

    return opts
  end,
}

