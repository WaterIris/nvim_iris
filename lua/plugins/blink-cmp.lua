return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "none", -- disable builtin if doing custom
            ["<Tab>"] = { "select_next", "accept", "fallback" },
            ["<S-Tab>"] = { "select_prev", "fallback" },

            ["<CR>"] = { "accept", "fallback" },    -- Enter to confirm
            ["<C-Space>"] = { "show", "fallback" }, -- Show menu
            ["<C-e>"] = { "hide", "fallback" },     -- Hide menu

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
            use_nvim_cmp_as_default = true, -- Better compatibility with existing themes
            nerd_font_variant = 'mono',     -- 'mono' often looks cleaner in completion menus
        },
        completion = {
            documentation = {
                auto_show = true,
                window = { border = 'rounded' },
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
        signature = {
            enabled = true,
            window = {
                border = 'rounded',
            },
            -- This is the "Automatic" part
            trigger = {
                enabled = true,
                show_on_insert = true,            -- Show as soon as you enter insert mode inside a func
                show_on_trigger_character = true, -- Show on '(' or ','
            },
        },
    },
    opts_extend = { "sources.default" }
}
