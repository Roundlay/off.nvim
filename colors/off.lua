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
        -- ... (set dark mode colors)
    else
        -- ... (set light mode colors)
    end

    -- Set highlights
    utils.highlight("Normal", { bg = bg, fg = norm })
    utils.highlight("Cursor", { bg = colors.blue, fg = norm })
    -- ... (add all other highlight definitions)

    -- Set other UI element highlights
    -- ... (add all other UI element highlight definitions)
end

setup()
