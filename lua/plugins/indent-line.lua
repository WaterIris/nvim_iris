return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",          -- use the new module name
    event = "BufReadPre",  -- lazy-load when opening a file
    config = function()
        local ibl = require("ibl")
        ibl.setup {
            -- Character to draw for indentation
            indent = {
                char = "│",  -- vertical line
                tab_char = "│",
            },
            -- Highlight the current scope (function/block you're in)
            scope = {
                enabled = true,
                show_start = false,  -- show the start of the current scope
            },
        }
    end,
}

