return
    {
      "karb94/neoscroll.nvim",
      config = function()
        neoscroll = require('neoscroll')
        local keymap = {
          ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 50 }) end;
          ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 50 }) end;
          ["<C-c>"] = function() 
              neoscroll.zz({ half_win_duration = 50 })
              -- Scroll de 5 líneas hacia abajo sin mover el cursor del texto
              neoscroll.scroll(5, { move_cursor = false, duration = 50 })
          end,
        }
        local modes = { 'n', 'v', 'x' }
        for key, func in pairs(keymap) do
          vim.keymap.set(modes, key, func)
        end
    end
    }
