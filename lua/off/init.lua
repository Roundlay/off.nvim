local M = {}

-- local lazy = setmetatable({}, {
--     __index = function(_, key)
--         return require('off.' .. key)
--     end
-- })

function M.setup(opts)
    local config = require('off.config')
    config.setup(opts)
end

function M.load()
    vim.cmd [[colorscheme off]]
end

return M
