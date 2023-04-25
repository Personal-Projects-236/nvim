local mappings = vim.keymap.set

mappings('n', '<Leader>m', ':NvimTreeToggle<CR>') -- This will toggle the tree explorer`
mappings('n', 'Q', ':q<CR>') -- this will quit the terminal
mappings('n', 'W', ':qall<CR>') -- this quits all terminals
mappings('n', '<c-g>', ':FloatermNew --width=1.0 --height=1.0 --autoclose=2 lazygit<CR>')

-- Launch panel if nothing is typed after <leader>z
mappings("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used functions
mappings("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
mappings("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
mappings("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
mappings("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
mappings("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
mappings("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
mappings("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
mappings("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")
mappings("n", "<leader>zt", "<cmd>Telekasten toggle_todo<CR>")

-- Call insert link automatically when we start typing a link
mappings("i", "[[", "<cmd>Telekasten insert_link<CR>")

-- mapping to easily switch between window panes
mappings("n", "<c-h>", "<c-w>h<CR>")
mappings("n", "<c-j>", "<c-w>j<CR>")
mappings("n", "<c-k>", "<c-w>k<CR>")
mappings("n", "<c-l>", "<c-w>l<CR>")
