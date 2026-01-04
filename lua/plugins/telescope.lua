return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local opts = { noremap = true, silent = true }
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		vim.keymap.set("n", "<leader>dl", builtin.diagnostics, { desc = 'Telescope display diagnostic' })
		vim.keymap.set("n", "gd", builtin.lsp_definitions, opts, { desc = "Definitions" })
		vim.keymap.set("n", "gr", builtin.lsp_references, opts, { desc = "References" })
		vim.keymap.set("n", "gi", builtin.lsp_implementations, opts, { desc = "Implementations" })
		vim.keymap.set("n", "gt", builtin.lsp_type_definitions, opts, { desc = "Type Definitions" })
	end
}
