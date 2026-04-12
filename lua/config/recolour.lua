-- Bar on top of file with icons and file name
vim.api.nvim_set_hl(0, "WinBar", { fg = "#545c7e", bg = "none" })
vim.api.nvim_set_hl(0, "WinBarNC", { fg = "#545c7e", bg = "none" })
-- Color of background and numbers on the right
vim.api.nvim_set_hl(0, "LineNr", { fg = "#545c7e", bg = "none" })
-- Color of number on ther right
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#bb9af7", bold = true })

-- Current line
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#1a1b26", bg = "none", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#1a1b26", bg = "none", bold = true })

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#545c7e", bg = "none" })

vim.api.nvim_set_hl(0, "CustomTablineBubbleEdge", { fg = "#1a1b26", bg = "none" })
vim.api.nvim_set_hl(0, "CustomTablineBubbleLine", { fg = "#7aa2f7", bg = "#1a1b26" })
vim.api.nvim_set_hl(0, "CustomTablineBubbleSeparator", { fg = "#545c7e", bg = "#1a1b26" })
vim.api.nvim_set_hl(0, "CustomTablineBubbleColumn", { fg = "#bb9af7", bg = "#1a1b26" })
vim.api.nvim_set_hl(0, "CustomTablineBubblePercentage", { fg = "#e0af68", bg = "#1a1b26" })
vim.api.nvim_set_hl(0, "CustomTablineBubbleTotalLines", { fg = "#9ece6a", bg = "#1a1b26" })

vim.api.nvim_set_hl(0, "CustomTablineBubbleFiletype", { fg = "#7dcfff", bg = "#1a1b26" })
vim.api.nvim_set_hl(0, "CustomTablineBubbleDirectory", { fg = "#f7768e", bg = "#1a1b26" })
vim.api.nvim_set_hl(0, "CustomTablineBubbleGit", { fg = "#9ece6a", bg = "#1a1b26" })

vim.api.nvim_set_hl(0, "CustomTablineBubbleIndexSel", { fg = "#7aa2f7", bg = "#1a1b26", bold = true })
vim.api.nvim_set_hl(0, "CustomTablineBubbleLabelSel", { fg = "#7aa2f7", bg = "#1a1b26", bold = true })
vim.api.nvim_set_hl(0, "CustomTablineBubbleLabelSelModified", { fg = "#e0af68", bg = "#1a1b26", bold = true })

vim.api.nvim_set_hl(0, "CustomTablineBubbleIndex", { fg = "#545c7e", bg = "#1a1b26" })
vim.api.nvim_set_hl(0, "CustomTablineBubbleLabel", { fg = "#545c7e", bg = "#1a1b26" })
