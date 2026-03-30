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
opt.expandtab = true -- Convert tabs to spaces
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

-- Disable the native horizontal completion menu
vim.opt.wildmenu = false -- handled by blink-cmp
-- Set wildmode to an empty string or a mode that doesn't trigger automatically
vim.opt.wildmode = ""    -- handled by blink-cmp
vim.opt.winborder = "rounded" -- automatically adds rounded borders to popups 
