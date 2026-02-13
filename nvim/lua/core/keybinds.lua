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
--TERMINALS
-- Navegación fluida desde el modo terminal
vim.keymap.set('t', '<C-w>h', [[<C-\><C-n><C-w>h]]) -- Izquierda
vim.keymap.set('t', '<C-w>j', [[<C-\><C-n><C-w>j]]) -- Abajo
vim.keymap.set('t', '<C-w>k', [[<C-\><C-n><C-w>k]]) -- Arriba
vim.keymap.set('t', '<C-w>l', [[<C-\><C-n><C-w>l]]) -- Derecha
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], {desc = "Salir del modo terminal con jk"})

vim.keymap.set('n', '<leader>ta', function()
    vim.cmd('split | terminal')
end, { desc = "Terminal en split horizontal" })

vim.keymap.set('n', '<leader>ts', function()
    vim.cmd('vsplit | terminal')
end, { desc = "Terminal en split vertical" })
