return{
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            local npairs = require("nvim-autopairs")
            local Rule = require('nvim-autopairs.rule')

            npairs.setup({
                check_ts = true, -- Recomendado si usas Treesitter
            })

            -- Regla específica para Typst
            npairs.add_rules({
                Rule("$", "$", "typst")
                    -- Evita que se duplique si ya hay un $ después del cursor
                    :with_move(function(opts)
                        return opts.char == "$"
                    end)
            })
        end,
    }

