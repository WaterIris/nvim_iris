return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false,                      -- neo-tree will lazily load itself
    opts = {
        popup_border_style = "",       -- or "" to use 'winborder' on Neovim v0.11+
        window = {
            position = "current",
            mappings = {
                ["h"] = { "close_node" },
                ["l"] = { "open" },
            },
        },
        filesystem = {
            filtered_items = {
                visible = false, -- when true, they will just be displayed differently than normal items
                hide_dotfiles = false,
                hide_gitignored = true,
            },
        },
    },
    vim.keymap.set("n", "<leader><leader>", "<cmd>Neotree position=float toggle reveal<CR>",
        { silent = true, desc = "Neo-Tree Toggle" }),
}
