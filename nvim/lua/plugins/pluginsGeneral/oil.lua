return {
  'stevearc/oil.nvim',
  dependencies = { 
    -- Corregido el nombre de la dependencia para evitar futuros errores
    { "echasnovski/mini.icons", opts = {} } 
  },
  lazy = false,
  config = function()
    -- 1. ESENCIAL: Primero inicializa el plugin
    require("oil").setup({
      -- Aquí puedes añadir opciones luego si quieres
      view_options = {
        show_hidden = false,
      }
    })

    -- 2. El mapeo: Es mejor usar un string o una función anónima
    vim.keymap.set("n", "<leader>e", function() require("oil").open() end, { 
      desc = "Open Oil File Explorer",
      noremap = true, 
      silent = true 
    })
  end,
}
