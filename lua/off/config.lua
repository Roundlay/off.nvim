local M = {}

M.options = {
    colors_off_a_little = false,
    transparent_background = false,
    -- Add other configurable options here
}

function M.setup(opts)
    M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

return M
