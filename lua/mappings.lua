local mappings = vim.keymap.set

mappings('n', '<Leader>m', ':NvimTreeToggle<CR>') -- This will toggle the tree explorer`
mappings('n', 'Q', ':q<CR>') -- this will quit the terminal
mappings('n', 'W', ':qall<CR>') -- this quits all terminals
mappings('n', '<c-g>', ':FloatermNew --width=1.0 --height=1.0 --autoclose=2 lazygit<CR>')
