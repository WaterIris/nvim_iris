return {
    "folke/which-key.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
        preset = "helix",
        sort = { "group" },
        -- default sort:
        -- sort = { "local", "order", "group", "alphanum", "mod" },
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Keymaps Legend",
        },
    },
}
