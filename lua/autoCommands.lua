local auto = vim.api.nvim_create_autocmd

auto({"BufLeave"}, {command = "BDelete hidden"})

-- auto commands for javascript files
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
