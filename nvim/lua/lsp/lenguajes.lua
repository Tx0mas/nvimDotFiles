-- 1. Configuración básica de Mason
require("mason").setup({
    ui = {
        border = "rounded",
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- 2. El "puente" mágico: mason-lspconfig
require("mason-lspconfig").setup({
    -- Esta lista asegura que se instalen apenas abras Neovim
    ensure_installed = { 
        "clangd",    -- C/C++
        "lua_ls",    -- Lua
        "pyright",   -- Python
        "tinymist",  -- Typst
        "gopls"      -- Go
    },
})

-- 3. Habilitar los servicios (Tu configuración original + Go)
vim.lsp.enable("clangd")
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("tinymist")
vim.lsp.enable("gopls")
