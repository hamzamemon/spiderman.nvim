local util = {}
local sunflower = require('sunflower.theme')

-- Go trough the table and highlight the group with the color values
util.highlight = function(group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or ""

    local hl =
        "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " ..
            sp

    vim.cmd(hl)
    if color.link then
        vim.cmd("highlight! link " .. group .. " " .. color.link)
    end
end

-- Only define sunflower if it's the active colorshceme
function util.onColorScheme()
    if vim.g.colors_name ~= "sunflower" then
        vim.cmd [[autocmd! sunflower]]
        vim.cmd [[augroup! sunflower]]
    end
end

-- Change the background for the terminal, packer and qf windows
util.contrast = function()
    vim.cmd [[augroup sunflower]]
    vim.cmd [[  autocmd!]]
    vim.cmd [[  autocmd ColorScheme * lua require("sunflower.util").onColorScheme()]]
    vim.cmd [[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
    vim.cmd [[  autocmd FileType packer setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
    vim.cmd [[  autocmd FileType qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
    vim.cmd [[augroup end]]
end

-- Load the theme
function util.load()
    -- Set the theme environment
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "sunflower"

    -- Load plugins, treesitter and lsp async
    local async
    async = vim.loop.new_async(vim.schedule_wrap(function()
        sunflower.loadTerminal()

        -- loop trough the treesitter table and highlight every member
        local treesitter = sunflower.loadTreeSitter()
        for group, colors in pairs(treesitter) do
            util.highlight(group, colors)
        end

        -- loop trough the lsp table and highlight every member
        local lsp = sunflower.loadLSP()
        for group, colors in pairs(lsp) do util.highlight(group, colors) end

        -- loop trough the plugins table and highlight every member
        local plugins = sunflower.loadPlugins()
        for group, colors in pairs(plugins) do
            util.highlight(group, colors)
        end

        -- if contrast is enabled, apply it to sidebars and floating windows
        if vim.g.sunflower_contrast == true then util.contrast() end
        async:close()
    end))

    -- load the most importaint parts of the theme

    local editor = sunflower.loadEditor()

    local syntax = sunflower.loadSyntax()

    -- load editor highlights
    for group, colors in pairs(editor) do util.highlight(group, colors) end

    -- load syntax highlights
    for group, colors in pairs(syntax) do util.highlight(group, colors) end

    -- load the rest later ( lsp, treesitter, plugins )
    async:send()
end

return util
