local opt = vim.opt
-- Graphical
opt.cursorline = true
opt.termguicolors = true
-- Line numbers
opt.number = true
opt.relativenumber = true
-- Tabs and indentation
opt.autoindent = true
opt.smartindent = true
opt.shiftwidth = 4
opt.clipboard:append("unnamedplus")
-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8
-- Disable file things
opt.swapfile = false
opt.undofile = false
-- Theming
opt.laststatus = 2 -- Or 3 for global statusline
vim.opt.statusline = " %f %m %= %l:%c ♥ "
