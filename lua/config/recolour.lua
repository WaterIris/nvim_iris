-- Bar on top of file with icons and file name
vim.api.nvim_set_hl(0, "WinBar", { fg = "#545c7e", bg = "none" })
vim.api.nvim_set_hl(0, "WinBarNC", { fg = "#545c7e", bg = "none" })
-- Color of background and numbers on the right
vim.api.nvim_set_hl(0, "LineNr", { fg = "#545c7e", bg = "none" })
-- Color of number on ther right
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#bb9af7", bold = true })
-- Current line
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1a1b26" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#f7768e", bg = "#2F212F", bold = true })

vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#908caa", bg = "#1f1d2e" })

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, 'BlinkCmpScrollBarThumb', { fg = "none", bg = "#27a1b9" })
