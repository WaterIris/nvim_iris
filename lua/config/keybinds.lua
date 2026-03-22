vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, { desc = 'LSP Hover Documentation' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Line Diagnostics' })
-- Clears highlights and refreshes the screen
vim.keymap.set('n', '<Esc>', ':nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>', { silent = true })
-- Toggle the sidebar
vim.keymap.set('n', '<leader>tt', ':Neotree toggle<CR>', { desc = "Toggle Neo-tree" })
-- Focus the tree without toggling
vim.keymap.set('n', '<leader>tf', ':Neotree focus<CR>', { desc = "Focus Neo-tree" })
-- Open the Git status view specifically
vim.keymap.set('n', '<leader>gs', ':Neotree float git_status<CR>', { desc = "Git Status Float" })
