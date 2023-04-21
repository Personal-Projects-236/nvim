-- All plugins get installed
require("plugins")

-- general settings
require("autoCommands")
require("settings")
require("mappings")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- to run autoclose on startup
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
local home = vim.fn.expand("~/.config/nvim/notebook")
require('telekasten').setup({
  home = home,
  -- dir names for special notes (absolute path or subdir name)
  dailies      = home .. '/' .. 'daily',
  weeklies     = home .. '/' .. 'weekly',
  templates    = home .. '/' .. 'templates',
  template_new_daily = home .. '/' .. 'templates/daily.md',
})
