require('./config/plugins/tokyonight')

local packer = require("packer")

vim.cmd([[packadd packer.nvim]])

packer.startup(function()
	-- Plugins are listed here
	use("wbthomason/packer.nvim")
	use("m4xshen/autoclose.nvim")
	use({
	       "ms-jpq/coq_nvim",
	       branch = "coq",
	})
	use({"ms-jpq/coq.artifacts", branch = "artifacts"})
	use({"ms-jpq/coq.thirdparty", branch = "3p"})
	use("ryanoasis/nerd-fonts")
	use("nvim-tree/nvim-web-devicons")
	use('folke/tokyonight.nvim') -- Color Scheme
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use({
		"Pocco81/auto-save.nvim",
		config = function()
			 require("auto-save").setup {
				-- your config goes here
				-- or just leave it empty :)
		 	}
		end,
	})
	use {
  		'nvim-tree/nvim-tree.lua',
  		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
  		},
	}
	use('voldikss/vim-floaterm') 
end)
