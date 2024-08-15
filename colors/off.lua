local config = require('off.config')
local colors = require('off.colors').colors
local utils = require('off.utils')

local function setup()
    if vim.g.colors_name then
        vim.cmd("hi clear")
        if vim.fn.exists("syntax_on") then
            vim.cmd("syntax reset")
        end
    end

    vim.g.colors_name = "off"

    local colors_off_a_little = config.options.colors_off_a_little and 1 or 0

    -- Set color palette based on background
    local bg, bg_subtle, bg_subtle_comment, bg_very_subtle, norm, norm_subtle, purple, cyan, green, red, visual

    if vim.o.background == "dark" then
        bg = colors.black
        bg_subtle = colors.light_black
        bg_subtle_comment = colors.subtle_gray
        bg_very_subtle = colors.subtle_black
        norm = colors.lighter_gray
        norm_subtle = colors.light_gray
        purple = colors.light_purple
        cyan = colors.light_cyan
        green = colors.light_green
        red = colors.light_red
        visual = colors.lighter_black
    else
        bg = colors.actual_white
        bg_subtle = colors.light_gray
        bg_subtle_comment = colors.subtle_gray
        bg_very_subtle = colors.lighter_gray
        norm = colors.light_black
        norm_subtle = colors.lighter_black
        purple = colors.dark_purple
        cyan = colors.dark_cyan
        green = colors.dark_green
        red = colors.dark_red
        visual = colors.light_blue
    end

    -- Set highlights
    utils.highlight("Normal", { bg = bg, fg = norm })
    utils.highlight("Cursor", { bg = colors.blue, fg = norm })
    utils.highlight("Comment", { fg = bg_subtle_comment, italic = true })

    -- Syntax highlighting
    utils.highlight("Constant", { fg = cyan })
    utils.highlight("String", { fg = green })
    utils.highlight("Character", { fg = green })
    utils.highlight("Number", { fg = cyan })
    utils.highlight("Boolean", { fg = cyan })
    utils.highlight("Float", { fg = cyan })
    utils.highlight("Identifier", { fg = purple })
    utils.highlight("Function", { fg = purple })
    utils.highlight("Statement", { fg = red })
    utils.highlight("Conditional", { fg = red })
    utils.highlight("Repeat", { fg = red })
    utils.highlight("Label", { fg = red })
    utils.highlight("Operator", { fg = norm })
    utils.highlight("Keyword", { fg = red })
    utils.highlight("Exception", { fg = red })
    utils.highlight("PreProc", { fg = purple })
    utils.highlight("Include", { fg = purple })
    utils.highlight("Define", { fg = purple })
    utils.highlight("Macro", { fg = purple })
    utils.highlight("PreCondit", { fg = purple })
    utils.highlight("Type", { fg = cyan })
    utils.highlight("StorageClass", { fg = cyan })
    utils.highlight("Structure", { fg = cyan })
    utils.highlight("Typedef", { fg = cyan })
    utils.highlight("Special", { fg = norm_subtle })
    utils.highlight("SpecialChar", { fg = norm_subtle })
    utils.highlight("Tag", { fg = norm_subtle })
    utils.highlight("Delimiter", { fg = norm_subtle })
    utils.highlight("SpecialComment", { fg = norm_subtle })
    utils.highlight("Debug", { fg = norm_subtle })
    utils.highlight("Underlined", { fg = norm, underline = true })
    utils.highlight("Error", { fg = colors.actual_white, bg = red })
    utils.highlight("Todo", { fg = colors.actual_white, bg = purple, bold = true })

    -- UI elements
    utils.highlight("StatusLine", { fg = bg, bg = norm })
    utils.highlight("StatusLineNC", { fg = bg_subtle, bg = norm_subtle })
    utils.highlight("TabLine", { fg = norm, bg = bg_subtle })
    utils.highlight("TabLineFill", { fg = norm, bg = bg_subtle })
    utils.highlight("TabLineSel", { fg = bg, bg = norm })
    utils.highlight("VertSplit", { fg = bg_subtle })
    utils.highlight("LineNr", { fg = bg_subtle })
    utils.highlight("CursorLineNr", { fg = norm_subtle })
    utils.highlight("MatchParen", { bg = bg_subtle, bold = true })
    utils.highlight("Pmenu", { fg = norm, bg = bg_subtle })
    utils.highlight("PmenuSel", { fg = bg, bg = norm })
    utils.highlight("PmenuSbar", { bg = bg_subtle })
    utils.highlight("PmenuThumb", { bg = norm })
    utils.highlight("WildMenu", { fg = bg, bg = norm })
    utils.highlight("Visual", { bg = visual })
    utils.highlight("VisualNOS", { bg = visual })
    utils.highlight("Search", { fg = bg, bg = yellow })
    utils.highlight("IncSearch", { fg = bg, bg = yellow })
    utils.highlight("Folded", { fg = norm_subtle, bg = bg_subtle })
    utils.highlight("FoldColumn", { fg = norm_subtle, bg = bg_subtle })

    if colors_off_a_little == 1 then
        -- Adjust some colors if colors_off_a_little is true
        utils.highlight("Comment", { fg = norm_subtle, italic = true })
        utils.highlight("LineNr", { fg = norm_subtle })
    end
end

setup()
