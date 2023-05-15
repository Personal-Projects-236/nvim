local auto = vim.api.nvim_create_autocmd
local cmd = vim.cmd

auto({"BufLeave"}, {command = "BDelete hidden"})

-- auto commands for javascript files
auto({"BufWritePost"}, {
	pattern = {"*.js", "*.jsx", "*.mjs"},
	command = "JsFixImport"
})

auto({"FocusLost", "VimLeavePre", "BufWinLeave"}, {
	pattern = {"*.js", "*.jsx", "*.mjs", "*.ts", "*.tsx", "*.html", "*.css", "*.sass", "*.json"},
	command = "PrettierAsync"
})

auto({"VimLeavePre"}, {command = "NvimTreeClose"})


-- Spelling in markdown files}
auto({"BufRead","BufNewFile"}, {
	pattern = {"*.md"},
	command = "setlocal spell"
})
auto({"BufRead","BufNewFile"}, {
	pattern = {"*.md"},
	command = "setlocal spell spelllang=en_gb"
})
auto({"BufRead","BufNewFile"}, {
	pattern = {"*.md"},
	command = "set complete+=kspell"
})

cmd[[
autocmd FileType markdown,rmarkdown,vimwiki 
      \ inoremap <CR> <ESC>:VimwikiReturn 3 5<CR>| 
      \ autocmd CompleteChanged * silent! iunmap <CR>| 
      \ autocmd CompleteDone * inoremap <CR> <ESC>:VimwikiReturn 3 5<CR>
]]

cmd[[autocmd VimEnter * silent :PackerSync]]
