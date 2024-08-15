-- off.lua: Lualine theme for the Off colorscheme

local config = require('off.config')
local off = {}
local colors = {}

if vim.o.background == 'dark' then
    colors = {
        inactive = '#767676', -- medium_gray
        bg = '#212121',       -- black
        bg2 = '#424242',      -- light_black
        fg = '#C6C6C6',       -- lighter_gray
        red = '#E32791',      -- light_red
        green = '#5FD7A7',    -- light_green
        blue = '#20BBFC',     -- blue
        lightblue = '#b6d6fd',-- light_blue
        yellow = '#F3E430',   -- yellow
        pink = '#fb007a',     -- pink
    }
else
    colors = {
        inactive = '#767676', -- medium_gray
        bg = '#FFFFFF',       -- actual_white
        bg2 = '#B2B2B2',      -- light_gray
        fg = '#424242',       -- light_black
        red = '#C30771',      -- dark_red
        green = '#10A778',    -- dark_green
        blue = '#008EC4',     -- dark_blue
        lightblue = '#20A5BA',-- dark_cyan
        yellow = '#A89C14',   -- dark_yellow
        pink = '#fb007a',     -- pink (same as dark mode)
    }
end

local function mode_theme(fg, bg, gui)
    return {
        a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = bg, gui = gui or 'bold' },
        b = { fg = bg, bg = config.options.transparent and 'NONE' or colors.bg2 },
        c = { fg = colors.fg, bg = config.options.transparent and 'NONE' or colors.bg },
    }
end

off.normal = mode_theme(colors.fg, colors.blue)
off.insert = mode_theme(colors.bg, colors.green)
off.visual = mode_theme(colors.bg, colors.yellow)
off.replace = mode_theme(colors.bg, colors.red)
off.command = mode_theme(colors.bg, colors.pink)
off.terminal = mode_theme(colors.bg, colors.green)

off.inactive = {
    a = { fg = colors.inactive, bg = config.options.transparent and 'NONE' or colors.bg, gui = 'bold' },
    b = { fg = colors.inactive, bg = config.options.transparent and 'NONE' or colors.bg },
    c = { fg = colors.inactive, bg = config.options.transparent and 'NONE' or colors.bg },
}

return off
