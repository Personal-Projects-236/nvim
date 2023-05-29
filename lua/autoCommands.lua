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
		\ "coc-tsserver",
		\ "coc-pairs"
\ ]
]]

cmd[[
let g:coc_explorer_global_presets = {
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\ }
]]

-- NOTE: This is to update Packer and Coc when entering vim
auto({"VimEnter"}, {
	pattern = "*",
	command = "AsyncRun PackerSync && CocUpdate"
})
