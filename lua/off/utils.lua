local M = {}

function M.highlight(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

function M.link_highlight(group, link_to)
    vim.api.nvim_set_hl(0, group, { link = link_to })
end

function M.blend(color1, color2, alpha)
    local r1, g1, b1 = color1:match("#(%x%x)(%x%x)(%x%x)")
    local r2, g2, b2 = color2:match("#(%x%x)(%x%x)(%x%x)")
    r1, g1, b1 = tonumber(r1, 16), tonumber(g1, 16), tonumber(b1, 16)
    r2, g2, b2 = tonumber(r2, 16), tonumber(g2, 16), tonumber(b2, 16)
    local r = math.floor(r1 * alpha + r2 * (1 - alpha))
    local g = math.floor(g1 * alpha + g2 * (1 - alpha))
    local b = math.floor(b1 * alpha + b2 * (1 - alpha))
    return string.format("#%02x%02x%02x", r, g, b)
end

return M
