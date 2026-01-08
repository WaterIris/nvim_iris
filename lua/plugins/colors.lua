local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "StatusLine", {
	fg = "#EB6F92",
	bg = "#2E202F",
	bold = true,
    })

    vim.api.nvim_set_hl(0, "StatusLineNC", {
	fg = "#908caa",
	bg = "#1f1d2e",
    })
end
return {
    {
	"rose-pine/neovim",
	config = function()
	    require("rose-pine").setup({
                styles = {
                    italic = false, -- This disables italics globally for the theme
                },
		-- highlight_groups = {
		            -- StatusLine = { fg = "#31748f", bg = "#31748f", blend = 10 },
		            -- StatusLineNC = { fg = "subtle", bg = "surface" },
		-- },
            })
	    vim.cmd.colorscheme "rose-pine"
	    enable_transparency()
	end
    },
}
