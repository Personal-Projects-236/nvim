require('./config/plugins/tokyonight')

local packer = require("packer")

vim.cmd([[packadd packer.nvim]])

packer.startup(function()
	-- Plugins are listed here
	use("wbthomason/packer.nvim")
	-- Plugin for auto pairing pairs together
	use{
			'altermo/ultimate-autopair.nvim',
			event={'InsertEnter','CmdlineEnter'},
			config=function ()
					require('ultimate-autopair').setup({
									--Config goes here
									})
			end,
	}
	use({
		"windwp/nvim-ts-autotag",
		requires = "nvim-treesitter/nvim-treesitter"
	})
	use {
   		'renerocksai/telekasten.nvim',
   		requires = {'nvim-telescope/telescope.nvim', 'renerocksai/calendar-vim'}
  }
	-- NOTE: completion engine
	use { 'neoclide/coc.nvim', branch='release' }
	-- NOTE: coc plugins
	use({
		"neoclide/coc-css",
		pattern = {"*.css", "*.sass", "*.less"}
	})
	use({
		"antonk52/coc-cssmodules",
		pattern = {"*.module.css"}
	})
	use("josa42/coc-docker")
	use("weirongxu/coc-explorer")
	use("neoclide/coc-git")
	use("neoclide/coc-html")
	use("yaegassy/coc-htmldjango")
	use("yaegassy/coc-htmlhint")
	use("yaegassy/coc-html-css-support")
	use("pappasam/coc-jedi")
	use("neoclide/coc-json")
	use("xiyaowong/coc-lightbulb")
	use("valentjn/ltex")
	use("josa42/coc-lua")
	use("fannheyward/coc-markdownlint")
	use("weirongxu/coc-markdown-preview-enhanced")
	use("markmap/coc-markmap")
	use("pantharshit00/coc-prisma")
	use("yaegassy/coc-pydocstring")
	use("yaegassy/coc-pylsp")
	use("fannheyward/coc-pyright")
	use("fannheyward/coc-rome")
	use("yaegassy/coc-ruff")
	use("josa42/coc-sh")
	use("neoclide/coc-snippets")
	use("iamcco/coc-spell-checker")
	use("fannheyward/coc-sql")
	use("yaegassy/coc-sqlfluff")
	use("xiyaowong/coc-stylua")
	use("xiyaowong/coc-sumneko-lua")
	use("neoclide/coc-tsserver")
	-- NOTE: icons in neovim
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
	use {
  		'lewis6991/gitsigns.nvim',
  		config = function()
    			require('gitsigns').setup()
  		end
	}
	use('nvim-lua/plenary.nvim')
	use('kazhala/close-buffers.nvim')
	use({
		'prettier/vim-prettier',
		pattern = {"*.js", "*.jsx","*.mjs", "*.html", "*.css", "*.lua", "*.ts", "*.tsx", "*.sass"}
	})
	use({ 
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
		ft = { "markdown" }, })
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}
	use({"kristijanhusak/vim-js-file-import"}, {
		requires = "ludovicchabant/vim-gutentags"
	})
	use("tomarrell/vim-npr")
	-- markdown language support
	use({
			"iamcco/markdown-preview.nvim",
			run = function() vim.fn["mkdp#util#install"]() end,
	})
	use({'jakewvincent/mkdnflow.nvim'})

	use {
		'rmagatti/auto-session',
		config = function()
			require("auto-session").setup {
				log_level = "error",
				auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
			}
		end
	}
	use "arnamak/stay-centered.nvim"
	use({
		"nvim-telescope/telescope.nvim",
		requires = "nvim-lua/plenary.nvim"
	})
	use({"aca/emmet-ls"})
	use({"neovim/nvim-lspconfig"})
	use "terrortylor/nvim-comment"
end)
