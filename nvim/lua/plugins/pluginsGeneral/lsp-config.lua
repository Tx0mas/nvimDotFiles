return { "neovim/nvim-lspconfig",


    config = function()
        vim.opt.updatetime = 500
        local diagnostic_open = false

        vim.api.nvim_create_autocmd("CursorHold", {
            callback = function()
                if diagnostic_open then return end

                local line = vim.fn.line(".") - 1
                if #vim.diagnostic.get(0, { lnum = line }) == 0 then return end

                diagnostic_open = true
                vim.diagnostic.open_float(nil, {
                    focus = false,
                    scope = "line",
                })
            end
        })

        vim.api.nvim_create_autocmd({ "CursorMoved", "InsertEnter" }, {
            callback = function()
                diagnostic_open = false
            end
        })
    end,


}
