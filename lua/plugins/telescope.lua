return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local opts = { noremap = true, silent = true }
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope Find Files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope Live Grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope Buffers' })
        vim.keymap.set('n', '<leader>ft', builtin.help_tags, { desc = 'Telescope Help Tags' })
        vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = 'Telescope Diagnostic' })
        vim.keymap.set("n", "<leader>fh", builtin.highlights, { desc = 'Telescope Color Highlights' })
        vim.keymap.set("n", "gd", builtin.lsp_definitions, { noremap = true, silent = true, desc = "LSP Definitions" })
        vim.keymap.set("n", "gr", builtin.lsp_references, { noremap = true, silent = true, desc = "LSP References" })
        vim.keymap.set("n", "gi", builtin.lsp_implementations,
            { noremap = true, silent = true, desc = "LSP Implementations" })
        vim.keymap.set("n", "gt", builtin.lsp_type_definitions,
            { noremap = true, silent = true, desc = "LSP Type Definitions" })

        vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float, { desc = 'RAW Line Diagnostics' })
        vim.keymap.set('n', '<leader>hd', vim.lsp.buf.hover, { desc = 'LSP Hover Documentation' })
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, silent = true, desc = "LSP Rename" })
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "LSP Code Action" })
    end
}
