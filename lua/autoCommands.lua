local auto = vim.api.nvim_create_autocmd
local cmd = vim.cmd

auto({ "BufLeave" }, { command = "BDelete hidden" })

-- autocommands to auto format code on FocusLost
-- auto({ "FocusLost"}, {
--	pattern = { "*.js", "*.jsx", "*.mjs", "*.cjs", "*.ts", "*.tsx", "*.css", "*.sass", "*.json" },
--	command = "CocCommand prettier.formatFile"
-- })
auto({"FocusLost"}, {
	pattern = { "*.html" },
	command = "CocCommand htmldjango.djlint.format"
})
auto({"FocusLost"}, {
	pattern = {"*.py"},
	command = "Autoformat"
})

auto({ "VimLeavePre" }, { command = "NvimTreeClose" })

-- Spelling in markdown files}
auto({ "BufRead", "BufNewFile" }, {
	pattern = { "*.md" },
	command = "setlocal spell"
})
auto({ "BufRead", "BufNewFile" }, {
	pattern = { "*.md" },
	command = "setlocal spell spelllang=en_gb"
})
auto({ "BufRead", "BufNewFile" }, {
	pattern = { "*.md" },
	command = "set complete+=kspell"
})

cmd [[
let g:coc_global_extensions = [
\ "coc-css",
\ "coc-cssmodules",
\ "coc-docker",
\ "coc-explorer",
\ "coc-emmet",
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
\ "coc-prettier",
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
\ "coc-pairs",
\ "coc-python"
\ ]
]]

cmd [[
let g:coc_explorer_global_presets = {
	\   'floating': {
		\     'position': 'floating',
		\     'open-action-strategy': 'sourceWindow',
		\   },
		\ }
		]]
