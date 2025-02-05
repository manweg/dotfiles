return {
  { -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        rainbow_delimiters = true,
      },
    },
  },

  {
    "rebelot/kanagawa.nvim",
  },

  {
    "rose-pine/neovim",
    config = function()
      require("rose-pine").setup {
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },

        palette = {
          -- Override the builtin palette per variant
          -- moon = {
          --     base = '#18191a',
          --     overlay = '#363738',
          -- },
        },

        highlight_groups = {
          -- Comment = { fg = "foam" },
          -- VertSplit = { fg = "muted", bg = "muted" },
        },

        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          -- if highlight.undercurl then
          --     highlight.undercurl = false
          -- end
          --
          -- Change palette colour
          -- if highlight.fg == palette.pine then
          --     highlight.fg = palette.foam
          -- end
        end,
      }

      -- vim.cmd "colorscheme rose-pine"
      -- vim.cmd("colorscheme rose-pine-main")
      -- vim.cmd("colorscheme rose-pine-moon")
      -- vim.cmd("colorscheme rose-pine-dawn")
    end,
  },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    "sainnhe/sonokai",
    config = function()
      local configuration = vim.fn["sonokai#get_configuration"]()
      local palette = vim.fn["sonokai#get_palette"](configuration.style, configuration.colors_override)

      if configuration.transparent_background == 2 then palette.bg1 = palette.none end

      return {
        normal = {
          a = { bg = palette.bg_blue[1], fg = palette.bg0[1], gui = "bold" },
          b = { bg = palette.bg4[1], fg = palette.fg[1] },
          c = { bg = palette.bg1[1], fg = palette.fg[1] },
        },
        insert = {
          a = { bg = palette.bg_green[1], fg = palette.bg0[1], gui = "bold" },
          b = { bg = palette.bg4[1], fg = palette.fg[1] },
          c = { bg = palette.bg1[1], fg = palette.fg[1] },
        },
        visual = {
          a = { bg = palette.bg_red[1], fg = palette.bg0[1], gui = "bold" },
          b = { bg = palette.bg4[1], fg = palette.fg[1] },
          c = { bg = palette.bg1[1], fg = palette.fg[1] },
        },
        replace = {
          a = { bg = palette.orange[1], fg = palette.bg0[1], gui = "bold" },
          b = { bg = palette.bg4[1], fg = palette.fg[1] },
          c = { bg = palette.bg1[1], fg = palette.fg[1] },
        },
        command = {
          a = { bg = palette.yellow[1], fg = palette.bg0[1], gui = "bold" },
          b = { bg = palette.bg4[1], fg = palette.fg[1] },
          c = { bg = palette.bg1[1], fg = palette.fg[1] },
        },
        terminal = {
          a = { bg = palette.purple[1], fg = palette.bg0[1], gui = "bold" },
          b = { bg = palette.bg3[1], fg = palette.fg[1] },
          c = { bg = palette.bg1[1], fg = palette.fg[1] },
        },
        inactive = {
          a = { bg = palette.bg1[1], fg = palette.grey[1] },
          b = { bg = palette.bg1[1], fg = palette.grey[1] },
          c = { bg = palette.bg1[1], fg = palette.grey[1] },
        },
      }
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup {
        -- table: default groups
        groups = {
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
        },
        -- table: additional groups that should be cleared
        extra_groups = {},
        -- table: groups you don't want to clear
        exclude_groups = {},
        -- function: code to be executed after highlight groups are cleared
        -- Also the user event "TransparentClear" will be triggered
        on_clear = function() end,
      }
    end,
  },
}
