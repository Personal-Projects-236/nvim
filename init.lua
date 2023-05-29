-- All plugins get installed
require("plugins")

-- general settings
require("autoCommands")
require("settings")
require("mappings")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("plugin/coc")

-- Running plugins on startup
require("pluginSetup")
