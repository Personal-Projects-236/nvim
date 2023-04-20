local mappings = vim.keymap.set

mappings('n', '<Leader>m', ':NvimTreeToggle<CR>') -- This will toggle the tree explorer`
mappings('n', 'Q', ':q<CR>') -- this will quit the terminal
mappings('n', 'W', ':qall<CR>') -- this quits all terminals
