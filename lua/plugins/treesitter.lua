return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter")
        -- configure treesitter
        treesitter.setup({ -- enable syntax highlighting
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            -- enable indentation
            indent = { enable = true },

            -- ensure these languages parsers are installed
            ensure_installed = {
            },
            "cpp",
            "css",
            "python",
            "nix",
        })
        -- force start treesitter for all filetypes
        vim.api.nvim_create_autocmd('FileType', {
            pattern = '*',
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end,
}
