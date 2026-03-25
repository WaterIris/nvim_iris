local opt = vim.opt
-- Graphical
opt.cursorline = true
opt.termguicolors = true
opt.updatetime = 50
-- Line numbers
opt.number = true
opt.relativenumber = true
-- Tabs and indentation
opt.autoindent = true
opt.smartindent = true
vim.opt.wrap = false
opt.shiftwidth = 4
opt.tabstop = 4      -- Number of spaces a <Tab> counts for
opt.softtabstop = 4  -- Number of spaces a <Tab> counts for while editing
opt.expandtab = true -- Convert tabs to spaces (CRITICAL for your request)
-- Clipboard
opt.clipboard:append("unnamedplus")
-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8
-- Disable file things
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
-- Theming
opt.laststatus = 2 -- Or 3 for global statusline
opt.statusline = " %f %m %= %l:%c ♥ "
