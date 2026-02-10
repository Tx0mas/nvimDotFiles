return
    {
    'rpapallas/illustrate.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
    },
    keys = {
        -- Crear nuevo SVG y abrir en Inkscape
        { "<leader>is", function() require('illustrate').create_and_open_svg() end, desc = "Nuevo SVG (Inkscape)" },
        -- Abrir el SVG que está bajo el cursor en Typst
        { "<leader>io", function() require('illustrate').open_under_cursor() end, desc = "Abrir ilustración bajo cursor" },
        -- Buscar ilustraciones existentes con Telescope
        { "<leader>if", function() require('illustrate.finder').search_and_open() end, desc = "Buscar ilustraciones" },
    },
    opts = {
        illustration_dir = "figures", -- Carpeta donde se guardarán tus dibujos
        
        -- Configuración específica para Typst e Inkscape
        default_app = {
            svg = "inkscape",
        },
        
        -- Personalizamos el código que se pega en tu archivo .typ
        text_templates = {
            svg = {
                typ = [[#figure(
  image("$FILE_PATH", width: 80%),
  caption: [Descripción],
) <fig-label>]],
            },
        },
        
        -- Activa esto si quieres que te pregunte el nombre de la etiqueta/caption al crear
        prompt_caption = true,
        prompt_label = true,
        },
    }
