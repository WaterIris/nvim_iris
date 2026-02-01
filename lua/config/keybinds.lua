vim.g.mapleader = " "
vim.keymap.set("n","<leader>cd", vim.cmd.Ex)
-- vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR><Esc>')
-- Clears highlights and refreshes the screen
vim.keymap.set('n', '<Esc>', ':nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>', { silent = true })
