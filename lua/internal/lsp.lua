-- Lua LSP
vim.lsp.config["lua_ls"] = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".git", ".luarc.json", ".luarc.jsonc" },
    settings = {
        Lua = {
            format = {
                enable = true,
                defaultConfig = {
                    indent_style = "space",
                    indent_size = "4", -- Sets tab size to 4
                    continuation_indent_size = "4",
                },
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { "vim" },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

-- Ruff: Fast Linting and Formatting
vim.lsp.config["ruff"] = {
    cmd = { "ruff", "server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "ruff.toml", ".git" },
    -- Important: Disable Ruff's hover so it doesn't clash with Ty
    on_attach = function(client, bufnr)
        client.server_capabilities.hoverProvider = false

        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.code_action({
                    context = {
                        only = { "source.organizeImports" },
                        diagnostics = {} -- Add this line to satisfy the type requirement
                    },
                    apply = true,
                })
            end,
        })
    end,
    init_options = {
        settings = {
            fixAll = false,
            organizeImports = true,
            configurationPreference = "filesystemFirst", -- Respects your pyproject.toml
            lineLength = 120,
            lint = {
                select = { "E", "F", "I", "N", "UP" }, -- I = Organize Imports
                extendSelect = { "W", "B" },
                enable = true,
            },
            format = {
                preview = true,       -- Enables experimental formatting features if needed
                backend = "internal", -- ["internal" | "uv"]
            },
        },
    },
}


-- Ty: Extreme Speed Type Checking
vim.lsp.config["ty"] = {
    cmd = { "ty", "server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "setup.py", "setup.cfg", ".git" },
    offset_encoding = "utf-16",
    settings = {
        ty = {
            diagnosticMode = 'openFilesOnly',
            showSyntaxErrors = true,
            inlayHints = {
                variableTypes = false,
                callArgumentNames = true,
            },
            completions = {
                autoImport = false,
            },
        },
    },
}

-- Nix LSP: nil (Incremental Analysis & Fast Feedback)
vim.lsp.config["nil"] = {
    cmd = { "nil" },
    filetypes = { "nix" },
    root_markers = { "flake.nix", "shell.nix", ".git" },
    offset_encoding = "utf-16", -- nil (and most LSPs) typically prefer utf-16
    settings = {
        ["nil"] = {
            formatting = {
                command = { "nixfmt" },
            },
            nix = {
                -- This ensures nil can see your flake inputs for better completion
                flake = {
                    autoArchive = true,
                    autoEvalInputs = true,
                },
            },
        },
    },
}

vim.lsp.enable({ "lua_ls", "ty", "ruff", "nil" })

vim.diagnostic.config({
    virtual_text     = false,                   -- Display error alongside code
    underline        = true,                    -- Display error beneath
    virtual_lines    = { current_line = true }, -- display error description only on current line
    update_in_insert = false,                   -- update diagnostics while typing
    severity_sort    = true,
    signs            = {
        text = {
            [vim.diagnostic.severity.ERROR] = '󰅙',
            [vim.diagnostic.severity.WARN]  = '',
            [vim.diagnostic.severity.HINT]  = '󰋗',
            [vim.diagnostic.severity.INFO]  = '',
        },
    },
})

vim.api.nvim_create_autocmd("BufWritePre",
    { callback = function() vim.lsp.buf.format({ async = true }) end })

vim.lsp.inlay_hint.enable(true)
