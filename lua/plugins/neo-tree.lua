return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true, -- Close Neo-tree if it is the last window left open
			window = {
				width = 30,
				mappings = {
					["<space>"] = "none", -- Disable space so it doesn't conflict with your leader
				},
			},
			filesystem = {
				filtered_items = {
					visible = true, -- Show hidden files by default
					hide_dotfiles = false,
					hide_gitignored = false,
				},
				follow_current_file = {
					enabled = true, -- Focus the file you are currently editing in the tree
				},
			},
		})
	end,

}
