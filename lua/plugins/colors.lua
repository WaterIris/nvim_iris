local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "StatusLine", {
	fg = "#f7768e",
	bg = "#2F212F",
	bold = true,
    })

    vim.api.nvim_set_hl(0, "StatusLineNC", {
	fg = "#908caa",
	bg = "#1f1d2e",
    })
end
-- return {
--     {
-- 	"rose-pine/neovim",
-- 	config = function()
-- 	    require("rose-pine").setup({
--                 styles = {
--                     italic = false, -- This disables italics globally for the theme
--                 },
-- 		-- highlight_groups = {
-- 		--             StatusLine = { fg = "#7aa2f7", bg = "#7aa2f7", blend = 10 },
-- 		--             StatusLineNC = { fg = "subtle", bg = "surface" },
-- 		-- },
--             })
-- 	    vim.cmd.colorscheme "rose-pine"
-- 	    -- enable_transparency()
-- 	end
--     },
-- }
return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        -- priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "night", -- Choose between "storm", "moon", "night", or "day"
                -- transparent = true, -- Tokyo Night has built-in transparency support
                styles = {
                    -- sidebars = "transparent",
                    -- floats = "transparent",
                    keywords = { italic = false }, -- Disables italics as per your preference
                },
            })

            vim.cmd.colorscheme "tokyonight"
            -- Apply your custom overrides
            enable_transparency()
        end,
    },
}
