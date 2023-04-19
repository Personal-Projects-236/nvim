-- All plugins get installed
require("plugins")

-- general settings
require("autoCommands")
require("settings")

-- to run autoclose on startup
require("autoclose").setup()
require("config/coq").setup()
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  }
}
