local auto = vim.api.nvim_create_autocmd

-- auto({"InsertLeave"}, {command = "w"})
auto({"BufLeave"}, {command = "BDelete hidden"})
auto({"BufWritePost"}, {command = "PrettierAsync"})

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
