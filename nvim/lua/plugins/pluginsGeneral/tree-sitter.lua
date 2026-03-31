return{
      'nvim-treesitter/nvim-treesitter',
      lazy = false,
      build = ':TSUpdate',
      config = function()
        require'nvim-treesitter'.setup {
          install_dir = vim.fn.stdpath('data') .. '/site'
        }
        require'nvim-treesitter'.install { 'cpp', 'c' , 'lua', 'python', 'go','rust'}

        vim.api.nvim_create_autocmd("FileType", {
          pattern = { "c", "cpp" , "lua", "python",'go','rust','rs'},
          callback = function(args)
            vim.treesitter.start(args.buf)
          end,
        })

      end

}
