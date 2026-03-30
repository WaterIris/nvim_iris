return {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = {
            preset = "none", -- disable builtin if doing custom
            ["<Up>"] = { "select_prev", "fallback" },
            ["<Down>"] = { "select_next", "fallback" },
            ["<CR>"] = { "accept", "fallback" },
            ["<Tab>"] = { "select_next", "fallback" },
        },

        cmdline = {
            keymap = {
                preset = 'none',
                ["<CR>"] = { "accept", "fallback" },
                ["<Up>"] = { "select_prev", "fallback" },
                ["<Down>"] = { "select_next", "fallback" },
                ["<Tab>"] = { "select_next" },
            },
            completion = { menu = { auto_show = true } },
        },
        appearance = {
            nerd_font_variant = 'mono',
        },

        completion = {
            ghost_text = { enabled = true },
            list = {
                selection = {
                    preselect = true
                },
            },
            menu = {
                border = "rounded",
                scrollbar = false,
            },
            documentation = {
                auto_show = false,
                window = { border = "rounded" },
            },
        },

        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
            providers = {
                cmdline = {
                    min_keyword_length = function(ctx)
                        -- when typing a command, only show when the keyword is 3 characters or longer
                        if ctx.mode == 'cmdline' and string.find(ctx.line, ' ') == nil then return 3 end
                        return 0
                    end
                }
            }
        },
        fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
}
