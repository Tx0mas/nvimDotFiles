return
    {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      dependencies = {
        "nvim-lua/plenary.nvim",
      },
      config = function()
        -- 1. Setup harpoon
        local harpoon = require("harpoon")
        harpoon.setup({})

        -- 2. Define keymaps (using leader key and Ctrl for navigation)
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon: Add file" })
        vim.keymap.set("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon: Toggle quick menu" })

        -- 3. Define keymaps for navigation (jump to specific files)
        vim.keymap.set("n", "<C-j>", function() harpoon:list():select(1) end, { desc = "Harpoon: Go to file 1" })
        vim.keymap.set("n", "<C-k>", function() harpoon:list():select(2) end, { desc = "Harpoon: Go to file 2" })
        vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end, { desc = "Harpoon: Go to file 3" })
        vim.keymap.set("n", "<C-;>", function() harpoon:list():select(4) end, { desc = "Harpoon: Go to file 4" })
        vim.keymap.set("n", "<C-'>", function() harpoon:list():select(5) end, { desc = "Harpoon: Go to file 5" })
        
        -- 4. Optional: Add keymaps to move through the list sequentially
        vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = "Harpoon: Previous file" })
        vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = "Harpoon: Next file" })

        vim.keymap.set("n", "<leader>x", function() harpoon:list():remove() end, { desc = "remove currentfile" })
      end,
    }
