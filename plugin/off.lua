if vim.g.loaded_off_plugin then
    return
end
vim.g.loaded_off_plugin = true

vim.api.nvim_create_user_command("OffLoad", function()
    require('off').load()
end, {})

-- Add any other plugin-specific logic here
