local packer = require("packer")

vim.cmd([[packadd packer.nvim]])

packer.startup(function()
	-- Plugins are listed here
	use("wbthomason/packer.nvim")
	use("m4xshen/autoclose.nvim")
end)
