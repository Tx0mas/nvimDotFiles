return{
      "hrsh7th/nvim-cmp",
      dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- fuente LSP
        "hrsh7th/cmp-buffer",   -- autocompleta con lo que hay en el buffer
        "hrsh7th/cmp-path",     -- autocompleta rutas de archivos
        "hrsh7th/cmp-cmdline",  -- autocompleta comandos de Vim
        "L3MON4D3/LuaSnip",     -- snippets
        "saadparwaiz1/cmp_luasnip", -- integración con LuaSnip
      },
      config = function()

        local cmp = require("cmp")
        local luasnip = require("luasnip")
        cmp.setup({
          snippet = {
            expand = function(args)
              luasnip.lsp_expand(args.body)
            end,
          },
          mapping = {
            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(), -- abre menú de autocompletado
            ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Enter confirma
            ["<C-j>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              else
                fallback()
              end
            end, { "i", "s" }),
            ["<C-k>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
              end
            end, { "i", "s" }),
          },
          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "buffer" },
            { name = "path" },
          }),
        })
        vim.opt.pumheight = 4
        end,
    }
