-- Lua LSP
vim.lsp.config["lua_ls"] = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".git", ".luarc.json", ".luarc.jsonc" },
}

-- Python LSP: Ruff (Linter and Formatter)
vim.lsp.config["ruff"] = {
    cmd = { "ruff", "server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "ruff.toml", ".git" },
}

-- Python LSP: Pylsp (Configured ONLY for Mypy type checking)
vim.lsp.config["pylsp"] = {
    cmd = { "pylsp" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "setup.py", ".git" },
    offset_encoding = "utf-8",
    settings = {
        pylsp = {
            plugins = {
                -- Disable standard Pylsp linters (let Ruff handle these)
                pyflakes = { enabled = false },
                pycodestyle = { enabled = false },
                mccabe = { enabled = false },
                pylint = { enabled = false },
                -- Disable formatters (let Ruff handle these)
                autopep8 = { enabled = false },
                yapf = { enabled = false },
                -- Enable Mypy plugin
                pylsp_mypy = {
                    enabled = true,
                    live_mode = true, -- Real-time checking (VS Code feel)
                    strict = true,   -- Set to true for stricter type checking
                },
            },
        },
    },
}

vim.lsp.enable({ "lua_ls", "pylsp", "ruff" })

vim.diagnostic.config({
    virtual_text     = false,                -- Display error alongside code
    underline        = true,                 -- Display error beneath
    virtual_lines    = { current_line = true }, -- display error description only on current line
    update_in_insert = false,                 -- update diagnostics while typing
    signs = {
	text = {
	    [vim.diagnostic.severity.ERROR] = '✘',
	    [vim.diagnostic.severity.WARN]  = '▲',
	    [vim.diagnostic.severity.HINT]  = '⚑',
	    [vim.diagnostic.severity.INFO]  = '»',
	},
    },
})


vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.py",
    callback = function()
        -- 1. Organize Imports (isort)
        vim.lsp.buf.code_action({
            context = { only = { "source.organizeImports.ruff" } },
            apply = true,
        })
        
        -- 2. Fix everything EXCEPT what we marked 'unfixable' in pyproject.toml
        vim.lsp.buf.code_action({
            context = { only = { "source.fixAll.ruff" } },
            apply = true,
        })

        -- 3. Final format
        vim.lsp.buf.format({ async = false })
    end,
})


-- vim.api.nvim_create_autocmd("FileType", {
--   callback = function()
--     pcall(vim.treesitter.start)
--   end,
-- })
