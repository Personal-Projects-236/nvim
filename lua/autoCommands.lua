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
let g:coc_global_extensions = [
		\ "coc-css",
		\ "coc-cssmodules",
		\ "coc-docker",
		\ "coc-explorer",
		\ "coc-git",
		\ "coc-html",
		\ "coc-htmldjango",
		\ "coc-htmlhint",
		\ "coc-html-css-support",
		\ "coc-jedi",
		\ "coc-json",
		\ "coc-lightbulb",
		\ "coc-ltex",
		\ "coc-lua",
		\ "coc-markdown-preview-enhanced",
		\ "coc-markmap",
		\ "coc-prisma",
		\ "coc-pydocstring",
		\ "@yaegassy/coc-pylsp",
		\ "coc-pyright",
		\ "coc-rome",
		\ "@yaegassy/coc-ruff",
		\ "coc-sh",
		\ "coc-snippets",
		\ "coc-sql",
		\ "coc-sqlfluff",
		\ "coc-sumneko-lua",
		\ "coc-tsserver"
\ ]
]]

cmd[[
autocmd FileType markdown,rmarkdown,vimwiki 
      \ inoremap <CR> <ESC>:VimwikiReturn 3 5<CR>| 
      \ autocmd CompleteChanged * silent! iunmap <CR>| 
      \ autocmd CompleteDone * inoremap <CR> <ESC>:VimwikiReturn 3 5<CR>
]]

cmd[[autocmd VimEnter * silent :PackerSync]]
