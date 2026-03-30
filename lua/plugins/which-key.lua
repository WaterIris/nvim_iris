return {
    "folke/which-key.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
        preset = "helix",
        sort = { "group" },
        -- default sort:
        -- sort = { "local", "order", "group", "alphanum", "mod" },
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
