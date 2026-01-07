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
    -- We disable hover on Ruff because Pyright provides better type-specific hover info
    on_attach = function(client, _)
        client.server_capabilities.hoverProvider = false
    end,
}

-- Python LSP: Pyright (Type Checking)
vim.lsp.config["pyright"] = {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = {
        "pyproject.toml",
        "setup.py",
        "setup.cfg",
        "requirements.txt",
        ".git",
    },
    settings = {
        pyright = {
            disableOrganizeImports = true, -- Let Ruff handle imports
        },
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
                -- ignore = { '*' }, -- Let Ruff handle linting diagnostics
            },
        },
    },
}

vim.lsp.enable({ "lua_ls", "pyright", "ruff" })

vim.diagnostic.config({
    virtual_text     = false,                -- Display error alongside code
    signs            = true,                 -- Icons ? prbl
    underline        = true,                 -- Display error beneath
    virtual_lines    = { current_line = true }, -- display error description only on current line
    update_in_insert = false,                 -- update diagnostics while typing
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
