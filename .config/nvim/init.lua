require("mwegel")

vim.o.background = "dark"
vim.cmd.colorscheme("default")

if vim.o.background == 'dark' then
  vim.cmd("hi Normal guibg=#2E3440")
  vim.cmd("hi StatusLine guifg=white ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi StatusLineNC guifg=white ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi WinBar guifg=#d3d3d3 ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi WinBarNC guifg=gray ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi NormalFloat guifg=gray ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi FloatBorder guifg=gray ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi LineNr guifg=gray guibg=NONE ctermbg=NONE")
  vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
  vim.cmd("hi VertSplit guibg=NONE ctermbg=NONE")

else
  vim.cmd("hi Normal guibg=NONE")
  vim.cmd("hi StatusLine guifg=black ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi StatusLineNC guifg=black ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi WinBar guifg=black ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi WinBarNC guifg=gray ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi NormalFloat guifg=gray ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi FloatBorder guifg=gray ctermfg=8 guibg=NONE ctermbg=NONE")
  vim.cmd("hi LineNr guifg=gray guibg=NONE ctermbg=NONE")
end
