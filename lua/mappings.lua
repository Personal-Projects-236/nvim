local mappings = vim.keymap.set
local auto = vim.api.nvim_create_autocmd

mappings('n', 'q', ':q<CR>') -- this will quit the terminal
mappings('n', 'Q', ':qall<CR>') -- this quits all terminals
mappings('n', '<c-g>', ':FloatermNew --width=1.0 --height=1.0 --autoclose=2 lazygit<CR>') -- opens lazygit in full screen mode
mappings('n', 't', ':TodoTelescope keywords=TODO,PERF,HACK,NOTE,FIX,WARN<CR>') -- searches projects for all keywords
mappings('n', '<c-f>', ':JsFixImport<CR>')
mappings('n', 'm', ':CocCommand explorer --preset floating<CR>') -- open file explorer in pop up window
mappings('n', 's', ':CocCommand snippets.editSnippets<CR>') -- edit the snippets for the file that you are on
mappings('n', '+', '<c-w>+') -- increase the window pane
mappings('n', '-', '<c-w>-') -- decrease the window pane

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

-- mappings to execute the filetype that you are busy with
-- executes a markdown file only in the filetype markdown
auto({"FileType"}, {
	pattern = {"md", "markdown"},
	callback = function()
		mappings("n", "<C-t>", ":MarkdownPreview<CR>")
	end
})
-- executes a live browser load of html documents
auto({"FileType"}, {
	pattern = {"html"},
	callback = function ()
		mappings("n", "<C-t>", ":BrowserOpen<CR>")
	end
})
-- executes a javascript file only in javascript
auto({"FileType"}, {
	pattern = {"js", "javascript"},
	callback = function()
		mappings("n", "<C-t>", ":!node %<CR>")
	end
})

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
