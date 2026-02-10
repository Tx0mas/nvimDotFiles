return
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          -- Esto hace que la carpeta 'assets' se cree donde está tu archivo .typ
          relative_to_current_file = true, 
          
          -- Esto asegura que la ruta escrita en Typst no sea absoluta, sino relativa
          use_absolute_path = false,
          
          dir_path = "assets",
          prompt_for_file_name = true,
        },
        filetypes = {
          typst = {
            template = [[#figure(
      image("$FILE_PATH", width: 80%),
      caption: [$CURSOR],
    ) <fig-$LABEL>]],
          },
        },
      },
      keys = {
        { "<leader>pi", "<cmd>PasteImage<cr>", desc = "Paste image from clipboard" },
      },
    }
