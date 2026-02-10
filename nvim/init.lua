vim.g.mapleader = " "  -- espacio como leader

require("lazyboot")

require("lazy").setup({
    spec = {
        { import = "plugins.pluginsGeneral" }, -- Tus plugins normales
        { import = "plugins.pluginsThemes" },         -- Tus temas
        { import = "plugins.pluginsTypst" },         -- Tus temas
      },
})

require("core.colors")
require("core.defaultcolor")
require("core.basic")
require("core.keybinds")

require("lsp.lenguajes")

require("plugins.pluginsMios.todo")
