return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = {
	ensure_installed = {
	    "cpp",
	    "css",
	    "python",
	    "nix",
	},
	auto_install = false,

	highlight = {
	    enable = true,
	    additional_vim_regex_highlighting = false,
	},
	indent = {
	    enable = true,
	},
	fold = {
	    enable = true,
	},
    },
    config = function()
	vim.api.nvim_create_autocmd("FileType", {
	    callback = function()
		pcall(vim.treesitter.start)
	    end,
	})
    end
}

