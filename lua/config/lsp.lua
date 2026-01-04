-- Lua LSP
vim.lsp.config["lua_ls"] = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".git", ".luarc.json", ".luarc.jsonc" },
}

-- Python LSP: BasedPyright
vim.lsp.config["basedpyright"] = {
    cmd = { "basedpyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = {
	"pyproject.toml",
	"setup.py",
	"setup.cfg",
	"requirements.txt",
	".git",
    },
    settings = {
	-- Optional: BasedPyright settings
	basedpyright = {
	    analysis = {
		autoSearchPaths = true,
		diagnosticMode = "workspace", -- "workspace", "openFilesOnly", as you prefer
		useLibraryCodeForTypes = true,
	    },
	},
    },
}

-- Ruff (linting/diagnostics)
vim.lsp.config["ruff"] = {
    cmd = { "ruff", "server" },
    filetypes = { "python" },
    root_markers = {
	".git",
	"requirements.txt"
    },
}

vim.lsp.enable({ "lua_ls", "basedpyright", "ruff" })

vim.diagnostic.config({
    virtual_text     = false,                -- Display error alongside code
    signs            = true,                 -- Icons ? prbl
    underline        = true,                 -- Display error beneath
    virtual_lines    = { current_line = true }, -- display error description only on current line
    update_in_insert = false,                 -- update diagnostics while typing
})
