vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>s", ":wq<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q!<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set('n', '<C-z>', 'u', { noremap = true, silent = true })
vim.keymap.set('i', '<C-z>', '<Esc>u', { noremap = true, silent = true })
vim.keymap.set('v', '<C-z>', 'u', { noremap = true, silent = true })
--block
vim.keymap.set("n", "<C-b>", "<C-v>", { desc = "Visual Block Mode" })

-- Copia el path del directorio actual al portapapeles
vim.keymap.set('n', '<leader>c', function()
    local path = vim.fn.expand('%:p:h')
    vim.fn.setreg('+', 'cd ' .. path)
    print("Comando cd copiado al portapapeles")
end, { desc = "Copia 'cd [path]' al portapapeles" })


-- Mapeo para ir a la definición
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'LSP Go to Definition' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Hover Info' })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'LSP Go to Implementation' })
--TELESCOPE G REFERENCES
