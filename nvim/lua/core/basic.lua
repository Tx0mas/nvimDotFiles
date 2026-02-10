vim.opt.clipboard = 'unnamedplus'
vim.opt.wrap = false
vim.cmd("syntax on")
vim.o.scrolloff = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.expandtab = true
vim.opt.tabstop = 4       
vim.opt.softtabstop = 4  
vim.opt.shiftwidth = 4  
--vim.opt.shortmess:append("I") --si queres sacar el mensaje de inicio de nvim

-- Abrir PDF, SVG, PNG, JPG en visor externo
vim.api.nvim_create_autocmd("BufReadCmd", {
  -- Añadimos las extensiones de imagen al patrón
  pattern = { "*.pdf", "*.svg", "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" },
  callback = function(args)
    local file = args.file
    
    -- Ejecuta el visor en segundo plano
    -- SumatraPDF soporta la mayoría de estos formatos
    vim.fn.jobstart({"sumatrapdf.exe", file}, { detach = true })
    
    -- Cierra el buffer de nvim para no ver basura binaria
    -- Usamos schedule para evitar errores de sincronización al cerrar el buffer
    vim.schedule(function()
      if vim.api.nvim_buf_is_valid(args.buf) then
        vim.api.nvim_buf_delete(args.buf, { force = true })
      end
    end)
  end,
})
