local M = {}

function M.highlight(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Add other utility functions here

return M
