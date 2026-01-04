return {
    -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    build = ":TSUpdate",
    main = "nvim-treesitter.config", -- Sets main module to use for opts
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    opts = {
        ensure_installed = {
            "bash", "c", "lua", "luadoc", "markdown", "markdown_inline", "query", "vim", "vimdoc", "rust", "regex"
        },
        -- Autoinstall languages that are not installed
        auto_install = false,
        highlight = {
            enable = true,
        },
        indent = { enable = true},
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<M-space>", -- set to `false` to disable one of the mappings
                node_incremental = "<M-space>",
                scope_incremental = false,
                node_decremental = "<Backspace>",
            },
        },
    },
    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
}
