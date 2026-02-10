
--FUNCIONESTHEME
-- ===== THEMES =====


function transparent()
    vim.cmd.colorscheme("noirbuddy")

    require("noirbuddy").setup {
    colors = {
        primary   = "#f5ad27",
        secondary = "#1ffbff",
    },
    }

    vim.api.nvim_set_hl(0, "@lsp.type.variable",  { fg = "#1ffbff" })
    vim.api.nvim_set_hl(0, "@lsp.type.property", { fg = "#1ffbff" })
    vim.api.nvim_set_hl(0, "@lsp.type.parameter",{ fg = "#40a5ff" })
    vim.api.nvim_set_hl(0, "Comment", { fg = "#7ee787", italic = true })
    vim.api.nvim_set_hl(0, "@comment",{ fg = "#7ee787", italic = true })

    local transparent_groups = {
        "Normal", "NormalNC", "EndOfBuffer",
        "LineNr", "CursorLineNr", "SignColumn", "FoldColumn",
        "NormalFloat", "FloatBorder",
    }

    for _, g in ipairs(transparent_groups) do
        vim.api.nvim_set_hl(0, g, { bg = "none" })
    end

end

function chad()
    vim.cmd.colorscheme("abscs")
end

function metal()
    vim.cmd.colorscheme("impaled-nazarene")
end

function metal2()
    vim.cmd.colorscheme("darkthrone")
end

function metal3()
    vim.cmd.colorscheme("venom")
end

function metal4()
    vim.cmd.colorscheme("dark-funeral")
end

function metal5()
    vim.cmd.colorscheme("windir")
end

function metal6()
    vim.cmd.colorscheme("bathory")
end

function black()
    vim.cmd.colorscheme("rose-pine")

    vim.api.nvim_set_hl(0, "Keyword",  { fg = "#FFFFFF" })
    vim.api.nvim_set_hl(0, "Type",     { fg = "#FFFFFF" })
    vim.api.nvim_set_hl(0, "Constant", { fg = "#f347ff" })

    local groups = {
        "Normal", "NormalFloat", "SignColumn",
        "LineNr", "EndOfBuffer",
    }

    for _, g in ipairs(groups) do
        vim.api.nvim_set_hl(0, g, { bg = "#000000" })
    end
end


function black2()
    vim.cmd.colorscheme('torte')
    vim.api.nvim_set_hl(0, "Keyword",  { fg = "#FFFFFF" })
    vim.api.nvim_set_hl(0, "Type",     { fg = "#FFFFFF" })
    vim.api.nvim_set_hl(0, "Constant", { fg = "#f347ff" })
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#000000" })
end

function black3()
    vim.cmd('colorscheme poimandres')
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#000000" })
end

function ty_1() 
    require('vesper').setup({
        transparent = false, -- Boolean: Sets the background to transparent
        italics = {
            comments = true, -- Boolean: Italicizes comments
            keywords = false, -- Boolean: Italicizes keywords
            functions = false, -- Boolean: Italicizes functions
            strings = false, -- Boolean: Italicizes strings
            variables = false, -- Boolean: Italicizes variables
        },
        -- overrides = {
        --     Keyword = { fg = "#FFFFFF" },
        --     Type = { fg = "#FFFFFF" },
        --     Constant = { fg = "#FFFFFF" },
        -- },
        -- palette_overrides = {}
    })
    vim.cmd.colorscheme('vesper')
end

function ty_2() 
    require('vesper').setup({
        transparent = true, -- Boolean: Sets the background to transparent
        italics = {
            comments = true, -- Boolean: Italicizes comments
            keywords = false, -- Boolean: Italicizes keywords
            functions = false, -- Boolean: Italicizes functions
            strings = false, -- Boolean: Italicizes strings
            variables = false, -- Boolean: Italicizes variables
        },
        -- overrides = {
        --     Keyword = { fg = "#FFFFFF" },
        --     Type = { fg = "#FFFFFF" },
        --     Constant = { fg = "#FFFFFF" },
        -- },
        -- palette_overrides = {}
    })
    vim.cmd.colorscheme('vesper')
end

function ty_3() 
    require('vesper').setup({
        transparent = false,
        italics = {
            comments = true,
            keywords = false,
            functions = false,
            strings = false,
            variables = false,
        },
    })
    vim.cmd.colorscheme('vesper')
    local highlights = {
        "Normal",
        "NormalFloat",
        "SignColumn",
        "LineNr",
        "EndOfBuffer",
        "FoldColumn",
        "StatusLine",
    }
    for _, group in ipairs(highlights) do
        vim.api.nvim_set_hl(0, group, { bg = "#000000" })
    end
end


function gruv()
    vim.cmd.colorscheme('gruvbox')
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "String", { italic = false })
end

function tokio()
    vim.cmd.colorscheme('tokyonight-night')
end


function oxo()
    vim.opt.background = "dark" 
    vim.cmd("colorscheme oxocarbon")
end

function high_contrast()
    -- Seteamos el fondo oscuro antes de cargar nada
    vim.opt.background = "dark"
    vim.cmd.colorscheme("default")

    -- Forzamos que el fondo sea negro sólido
    local bg_groups = {
        "Normal", "NormalNC", "NormalFloat",
        "SignColumn", "LineNr", "EndOfBuffer",
        "CursorLine", "FoldColumn", "StatusLine"
    }

    for _, g in ipairs(bg_groups) do
        -- Agregamos ctermbg = 0 para asegurar que en terminales básicas también sea negro
        vim.api.nvim_set_hl(0, g, { fg = "#FFFFFF", bg = "#000000", ctermbg = 0 })
    end

    -- Resto de tus resaltados...
    vim.api.nvim_set_hl(0, "Keyword", { fg = "#FFFFFF", bold = true })
    vim.api.nvim_set_hl(0, "Type", { fg = "#FFFFFF" })
    vim.api.nvim_set_hl(0, "Function", { fg = "#FFFFFF" })
    vim.api.nvim_set_hl(0, "String", { fg = "#7ee787" })
    vim.api.nvim_set_hl(0, "Comment", { fg = "#7ee787", italic = true })
    vim.api.nvim_set_hl(0, "Constant", { fg = "#f347ff" })
    vim.api.nvim_set_hl(0, "Number", { fg = "#f347ff" })
    vim.api.nvim_set_hl(0, "Identifier", { fg = "#1ffbff" })
    vim.api.nvim_set_hl(0, "@lsp.type.variable", { fg = "#1ffbff" })
    vim.api.nvim_set_hl(0, "@lsp.type.property", { fg = "#1ffbff" })
    vim.api.nvim_set_hl(0, "@lsp.type.parameter", { fg = "#40a5ff" })
end


function BlackTp()
    vim.cmd.colorscheme("noirbuddy")

    require("noirbuddy").setup {
    colors = {
        primary   = "#f5ad27",
        secondary = "#1ffbff",
    },
    }

    vim.api.nvim_set_hl(0, "@lsp.type.variable",  { fg = "#1ffbff" })
    vim.api.nvim_set_hl(0, "@lsp.type.property", { fg = "#1ffbff" })
    vim.api.nvim_set_hl(0, "@lsp.type.parameter",{ fg = "#40a5ff" })
    vim.api.nvim_set_hl(0, "Comment", { fg = "#7ee787", italic = true })
    vim.api.nvim_set_hl(0, "@comment",{ fg = "#7ee787", italic = true })

    vim.opt.background = "dark"
    vim.cmd.colorscheme("default")

    -- Forzamos que el fondo sea negro sólido
    local bg_groups = {
        "Normal", "NormalNC", "NormalFloat",
        "SignColumn", "LineNr", "EndOfBuffer",
        "CursorLine", "FoldColumn", "StatusLine"
    }

    for _, g in ipairs(bg_groups) do
        -- Agregamos ctermbg = 0 para asegurar que en terminales básicas también sea negro
        vim.api.nvim_set_hl(0, g, { fg = "#FFFFFF", bg = "#000000", ctermbg = 0 })
    end

end


function gruber()
    vim.cmd.colorscheme("gruber-darker")
    -- Forzamos que el fondo sea negro sólido
    local bg_groups = {
        "Normal", "NormalNC", "NormalFloat",
        "SignColumn", "LineNr", "EndOfBuffer",
        "CursorLine", "FoldColumn", "StatusLine"
    }
    for _, g in ipairs(bg_groups) do
        -- Agregamos ctermbg = 0 para asegurar que en terminales básicas también sea negro
        vim.api.nvim_set_hl(0, g, { fg = "#FFFFFF", bg = "#000000", ctermbg = 0 })
    end

end


function tom()
    vim.cmd.colorscheme("default")
    vim.opt.background = "dark"

    local fondo = "#080714"
    local amarillo = "#ffe400"
    local blanco = "#FFFFFF"
    local verde = "#29da11"
    local rojo = "#ff0000"
    local celeste = "#64ecff"
    local celeste_oscuro = "#004752"

    local gris = "#666666"
    local negro = "#000000"
    local subtle_accent = "#999999" -- Para cosas que no quieres que brillen tanto

    local bg_groups = {
        "Normal", "NormalNC", "NormalFloat", "SignColumn",
        "LineNr", "EndOfBuffer", "CursorLine", "FoldColumn",
        "StatusLine", "Pmenu", "FloatBorder"
    }
    for _, g in ipairs(bg_groups) do
        vim.api.nvim_set_hl(0, g, { fg = white, bg = fondo, ctermbg = 0 })
    end

    local syntax = {
        ["Keyword"] = { fg = blanco, bold = true },
        ["Function"] = { fg = amarillo },
        ["Identifier"] = { fg = celeste },
        ["Statement"] = { fg = "#ff0000" },
        ["Type"] = { fg = celeste },
        ["Operator"] = { fg = blanco },
        ["String"] = { fg = verde },
        ["Constant"] = { fg = blanco },
        ["Number"] = { fg = rojo },
        ["NonText"] = { fg = "#333333" }, -- Caracteres invisibles
        ["@variable"] = { fg = celeste},
        ["@property"] = { fg = celeste },
        ["@parameter"] = { fg = celeste_oscuro},
        ["@comment"] = { fg = gris , italic = true },


        ["StorageClass"] = { fg = blanco }, -- static, register, volatile, etc.
        ["Structure"] = { fg = blanco },    -- struct, union, enum
        ["Typedef"] = { fg = blanco },      -- typedef
        ["@type"] = { fg = blanco},           -- Clases, structs, tipos en general
        ["@type.builtin"] = { fg = blanco },   -- int, char, float (primitivos en amarillo)
        ["@type.definition"] = { fg = blanco }, -- nombres en definiciones de struct
    }

    for group, settings in pairs(syntax) do
        vim.api.nvim_set_hl(0, group, settings)
    end
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = blanco, bold = true })
        vim.api.nvim_set_hl(0, "Visual", { bg = "#333333" }) -- Fondo gris oscuro para selección
        vim.api.nvim_set_hl(0, "Search", { fg = amarillo, bg = negro }) -- Búsqueda invertida
end



function tom_black()
    vim.cmd.colorscheme("default")
    vim.opt.background = "dark"

    local fondo = "#000000"
    local amarillo = "#ffe400"
    local blanco = "#FFFFFF"
    local verde = "#29da11"
    local rojo = "#ff0000"
    local celeste = "#64ecff"
    local celeste_oscuro = "#004752"

    local gris = "#666666"
    local negro = "#000000"
    local subtle_accent = "#999999" -- Para cosas que no quieres que brillen tanto

    local bg_groups = {
        "Normal", "NormalNC", "NormalFloat", "SignColumn",
        "LineNr", "EndOfBuffer", "CursorLine", "FoldColumn",
        "StatusLine", "Pmenu", "FloatBorder"
    }
    for _, g in ipairs(bg_groups) do
        vim.api.nvim_set_hl(0, g, { fg = white, bg = fondo, ctermbg = 0 })
    end

    local syntax = {
        ["Keyword"] = { fg = blanco, bold = true },
        ["Function"] = { fg = amarillo },
        ["Identifier"] = { fg = celeste },
        ["Statement"] = { fg = "#ff0000" },
        ["Type"] = { fg = celeste },
        ["Operator"] = { fg = blanco },
        ["String"] = { fg = verde },
        ["Constant"] = { fg = blanco },
        ["Number"] = { fg = rojo },
        ["NonText"] = { fg = "#333333" }, -- Caracteres invisibles
        ["@variable"] = { fg = celeste},
        ["@property"] = { fg = celeste },
        ["@parameter"] = { fg = celeste_oscuro},
        ["@comment"] = { fg = gris , italic = true },


        ["StorageClass"] = { fg = blanco }, -- static, register, volatile, etc.
        ["Structure"] = { fg = blanco },    -- struct, union, enum
        ["Typedef"] = { fg = blanco },      -- typedef
        ["@type"] = { fg = blanco},           -- Clases, structs, tipos en general
        ["@type.builtin"] = { fg = blanco },   -- int, char, float (primitivos en amarillo)
        ["@type.definition"] = { fg = blanco }, -- nombres en definiciones de struct
    }

    for group, settings in pairs(syntax) do
        vim.api.nvim_set_hl(0, group, settings)
    end
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = blanco, bold = true })
        vim.api.nvim_set_hl(0, "Visual", { bg = "#333333" }) -- Fondo gris oscuro para selección
        vim.api.nvim_set_hl(0, "Search", { fg = amarillo, bg = negro }) -- Búsqueda invertida
end

function quiet()
    vim.cmd.colorscheme("quiet")
end


function tom4()
    vim.cmd.colorscheme("abscs")
end

function tom5()
    vim.cmd.colorscheme("gruvbox")
    vim.api.nvim_set_hl(0, "String", { italic = false })
end

function tom6()
    vim.cmd.colorscheme("habamax")
end
--ACCESOS RAPIDOS--
--ACCESOS RAPIDOS--
--Main--
--Mains--
vim.api.nvim_create_user_command("Tom", tom , {})
vim.api.nvim_create_user_command("Tom2", transparent, {})
vim.api.nvim_create_user_command("Tom3", gruv, {})
vim.api.nvim_create_user_command("Tom4", tom4 , {})
vim.api.nvim_create_user_command("Tom5", tom5 , {})
vim.api.nvim_create_user_command("Tom6", tom6 , {})
vim.api.nvim_create_user_command("Quiet", quiet, {})
--Mains--
--Main--
--Ty--
vim.api.nvim_create_user_command("Ty", ty_1, {})
vim.api.nvim_create_user_command("Ty2", ty_2, {})
vim.api.nvim_create_user_command("Ty3", ty_3, {})
--Ty--
--Tranparentes
vim.api.nvim_create_user_command("Tp", transparent, {})
vim.api.nvim_create_user_command("BTp", BlackTp , {})
--Estos son los mejorsitos
vim.api.nvim_create_user_command("Gr", gruber , {})
vim.api.nvim_create_user_command("Mt", metal3 , {})
vim.api.nvim_create_user_command("BTom", tom_black , {})
--Estos son los mejorsitos

vim.api.nvim_create_user_command("Contrast", high_contrast , {})
vim.api.nvim_create_user_command("Chad", chad , {})

vim.api.nvim_create_user_command("Black", black, {})
vim.api.nvim_create_user_command("Black2", black2, {})
vim.api.nvim_create_user_command("Black3", black3, {})
vim.api.nvim_create_user_command("Tokio", tokio, {})
vim.api.nvim_create_user_command("Oxo", oxo, {})

vim.api.nvim_create_user_command("Metal", metal , {})
vim.api.nvim_create_user_command("Metal2", metal2 , {})
vim.api.nvim_create_user_command("Metal3", metal3 , {})
vim.api.nvim_create_user_command("Metal4", metal4 , {})
vim.api.nvim_create_user_command("Metal5", metal5 , {})
vim.api.nvim_create_user_command("Metal6", metal6 , {})
--accesos rapidos
--LO SIGUIENTE ES SOLO PARA USO MIO AL CAMBIAR THEMES--
--LO SIGUIENTE ES SOLO PARA USO MIO AL CAMBIAR THEMES--
--LO SIGUIENTE ES SOLO PARA USO MIO AL CAMBIAR THEMES--

--colores blancos
--vim.api.nvim_set_hl(0, "Keyword",  { fg = "#FFFFFF" })
--vim.api.nvim_set_hl(0, "Type",     { fg = "#FFFFFF" })
--vim.api.nvim_set_hl(0, "Constant", { fg = "#f347ff" })
--Forma de forzar fondo oscuro
--vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
--vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
--vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000" })
--vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#000000" })
--Forma de forzar fondo oscuro



