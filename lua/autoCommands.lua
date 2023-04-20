local auto = vim.api.nvim_create_autocmd

-- auto({"InsertLeave"}, {command = "w"})
auto({"BufLeave"}, {command = "BDelete hidden"})
