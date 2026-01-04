return{
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
	keymap = {
	    preset = "none",  -- disable builtin if doing custom
	    ["<Tab>"] = { "select_next", "accept", "fallback" },
	    ["<S-Tab>"] = { "select_prev", "fallback" },

	    ["<CR>"] = { "accept", "fallback" },         -- Enter to confirm
	    ["<C-Space>"] = { "show", "fallback" },      -- Show menu
	    ["<C-e>"] = { "hide", "fallback" },          -- Hide menu

	    ["<Up>"] = { "select_prev", "fallback" },
	    ["<Down>"] = { "select_next", "fallback" },
	},
	cmdline = {
	    keymap = { 
		preset = 'inherit',
		["<CR>"] = { "fallback" },
		["<Up>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
	    },
	    completion = { menu = { auto_show = true } },
	},
	appearance = {
	    nerd_font_variant = 'normal',
	},
	completion = {
	    documentation = { 
		auto_show = true,
	    },
	    list = {
		selection = {
		preselect = false,
		auto_insert = false,
		},
	    },
	    accept = { auto_brackets = { enabled = false }, },
	},
	sources = {
	    default = {
		'lsp', 
		'path', 
		'snippets', 
		'buffer' },
	},
	fuzzy = { 
	    implementation = "prefer_rust_with_warning", 
	}
    },
    opts_extend = { "sources.default" }
}
