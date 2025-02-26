-- Share System Clipboard
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Vim Settings
-- vim.opt.guicursor = ""

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- scrolloff = 8 → Der Cursor bleibt immer mindestens 8 Zeilen vom Rand entfernt (macht das Navigieren angenehmer).
-- signcolumn = "yes" → Zeigt die Spalte für Zeichen (signs, z. B. für LSP-Fehlermarkierungen oder Git-Blame) dauerhaft an.
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Verringert die Zeit (in ms), nach der Neovim Änderungen speichert oder Plugins reagieren (z. B. Autocomplete oder LSP-Hover).
-- Standardwert ist 4000 ms (4 Sekunden), 50 ms macht Neovim reaktionsschneller.
vim.opt.updatetime = 50

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
vim.opt.breakindent = true
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Vim Transperancy
vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[hi NormalNC guibg=NONE ctermbg=NONE]])  -- Optional für Inaktiv-Fenster
vim.cmd([[hi LineNr guibg=NONE ctermbg=NONE]])    -- Zeilennummern transparent
vim.cmd([[hi SignColumn guibg=NONE]])            -- Git/LSP-Symbole transparent
vim.cmd([[hi NormalFloat guibg=NONE]])
vim.cmd([[hi FloatBorder guibg=NONE]])
