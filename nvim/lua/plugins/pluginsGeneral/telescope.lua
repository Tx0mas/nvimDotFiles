return
    {
        'nvim-telescope/telescope.nvim', tag = '0.2.1',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()

        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
          defaults = {
            prompt_prefix = "🔍 ",
            selection_caret = "➤ ",
            path_display = { "smart" },

            mappings = {
              i = {
                ["<Esc>"] = actions.close,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
              },
              n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
              },
            },
          },
        })

        -- activar fzf (MUY recomendado)
        telescope.load_extension("fzf")
        local builtin = require("telescope.builtin")

        -- Search Files
        --vim.keymap.set("n", "<leader>sf", builtin.find_files, {
        --  desc = "Search Files",
        --})


        -- (no dot files)
        vim.keymap.set("n", "<leader>ff", function()
          builtin.find_files({
            hidden = false,
            no_ignore = true,
            follow = true,
          })
        end, {
          desc = "Find files (all)",
        })

        -- Completo (TODO, incluso ocultos)

        vim.keymap.set("n", "<leader>fF", function()
          builtin.find_files({
            hidden = true,
            no_ignore = true,
            follow = true,
          })
        end, {
          desc = "Find files (all)",
        })

        -- Search Grep (palabras)
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
          desc = "Search Grep",
        })

        -- Buffers abiertos
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {
          desc = "Search Buffers",
        })

        vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, { desc = 'Telescope: Ver referencias' })

        end
    }
