require("autoclose").setup()
require("config/coq").setup()
require("nvim-web-devicons").setup()
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  }
}
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local home = vim.fn.expand("~/.config/nvim/notebook/notes")
local journal = vim.fn.expand("~/.config/nvim/notebook")

require('telekasten').setup({
  home = home,
  -- dir names for special notes (absolute path or subdir name)
  dailies      = journal .. '/' .. 'daily',
  weeklies     = journal .. '/' .. 'weekly',
  templates    = journal .. '/' .. 'templates',
  template_new_daily = journal .. '/' .. 'templates/daily.md',
	template_new_note = journal .. '/' .. 'templates/new_note.md'
})

require('mkdnflow').setup({
	to_do = {
		symbols = {' ', 'P', 'D'},
		update_parents = true,
		not_started = ' ',
		in_progress = 'P',
		complete = 'D'
	}
})
