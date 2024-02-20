local set = vim.opt
local g = vim.g
local api = vim.api

set.background = "dark"
set.clipboard = "unnamedplus"
set.number = true
set.title = true
set.updatetime = 10000
set.swapfile = false
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.termguicolors = true
set.wrap = false

g.js_file_import_strip_file_extension = 0

-- expand snippets
api.nvim_set_keymap('i', '<c-l>', '<Plug>(coc-snippets-previous)', {noremap = true, silent = true})
api.nvim_set_keymap('i', '<c-j>', '<Plug>(coc-snippets-next)', {noremap = true, silent = true})
api.nvim_set_keymap('i', '<C-j>', '<Plug>(coc-snippets-expand-jump)', {noremap = true, silent = true})
