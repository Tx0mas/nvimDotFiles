return
    {
      "kylechui/nvim-surround",
      version = "*", -- Usa "*" para la última versión estable
      event = "VeryLazy",
      config = function()
        require("nvim-surround").setup({
          keymaps = {
            insert          = "<C-g>z",
            insert_line     = "<C-g>Z",
            normal          = "z",     -- Mapeo base para normal
            normal_cur      = "zz",    -- Para rodear la línea actual
            normal_line     = "zZ",
            normal_cur_line = "zZZ",
            visual          = "Z",     -- 'Z' en modo Visual para rodear selección
            visual_line     = "gZ",
            delete          = "dz",    -- Borrar surround: dz
            change          = "cz",    -- Cambiar surround: cz
          },
        })
      end
    }

