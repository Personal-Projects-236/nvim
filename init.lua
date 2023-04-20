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
require("obsidian").setup({
  dir = "~/.config/nvim/my-vault",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  }
})
