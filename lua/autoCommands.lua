local auto = vim.api.nvim_create_autocmd

auto({"BufLeave"}, {command = "BDelete hidden"})
auto({"FocusLost"}, {
	pattern = {"*.js", ".jsx", "*.mjs", "*.ts", "*.tsx", "*.html", "*.css", "*.sass", "*.json"},
	command = "PrettierAsync"
})
auto({"VimLeavePre"}, {command = "NvimTreeClose"})

-- auto commands for javascript files
-- this will fix all imports on js, jsx and mjs files
auto({"TextChanged"}, {
	pattern = {"*.js", "*.jsx", "*.mjs"},
	command = "JsFixImport"
})

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
