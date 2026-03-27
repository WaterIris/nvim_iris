local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap.set("n", "<leader>cd", vim.cmd.Ex)
keymap.set('n', '<leader>h', vim.lsp.buf.hover, { desc = 'LSP Hover Documentation' })
keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Line Diagnostics' })

-- Clears highlights and refreshes the screen
keymap.set('n', '<Esc>', ':nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>', { silent = true })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })

-- Move line to left right without exiting
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- moving via buffer with n and N centers screen for highlighted words
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Paste over text dont update clipboard
keymap.set("x", "<leader>p", [["_dP]])
keymap.set("v", "p", '"_dp', opts)

keymap.set({"n", "v"}, "d", '"_d', opts)
keymap.set({"n", "v"}, "x", '"_x', opts)

-- Replace the word cursor is on globally
keymap.set("n", "<leader>rn", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace word cursor is on globally" })

