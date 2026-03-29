local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- keymap.set("n", "<leader>cd", vim.cmd.Ex, { desc = "File Explorer" })

-- Clears highlights and refreshes the screen
keymap.set('n', '<Esc>', ':nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>', { silent = true })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down in visual selection" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up in visual selection" })

-- keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
-- keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })

-- Move line to left right without exiting
keymap.set("v", "<", "<gv", { noremap = true, silent = true, desc = "Move left" })
keymap.set("v", ">", ">gv", { noremap = true, silent = true, desc = "Move right" })

-- moving via buffer with n and N centers screen for highlighted words
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Paste over text dont update clipboard
keymap.set("x", "<leader>p", [["_dP]])
keymap.set("v", "p", '"_dp', opts)

keymap.set({ "n", "v" }, "x", '"_x', opts)

-- Replace the word cursor is on globally mostly overriden by lsp
keymap.set("n", "<leader>rr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "RAW rename" })

-- tab stuff
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open New Tab" })            --open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })     --close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go Next Tab" })               --go to next
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go Prev Tab" })               --go to pre
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Duplicate Current Tab" }) --open current tab in new tab
