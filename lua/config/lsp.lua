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

-- Python LSP: Astral ty (Extreme Speed Type Checking)
vim.lsp.config["ty"] = {
    cmd = { "ty", "server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "setup.py", "setup.cfg", ".git" },
    offset_encoding = "utf-8",
    settings = {},
}

vim.lsp.enable({ "lua_ls", "ty", "ruff" })

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
vim.lsp.inlay_hint.enable(true)
