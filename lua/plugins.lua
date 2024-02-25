require('./config/plugins/tokyonight')

local packer = require("packer")

vim.cmd([[packadd packer.nvim]])

packer.startup({function()
	-- Plugins are listed here
	-- general plugins
	-- vimspector
	use {
		"puremourning/vimspector",
		cmd = { "VimspectorInstall", "VimspectorUpdate" },
		fn = { "vimspector#Launch()", "vimspector#ToggleBreakpoint", "vimspector#Continue" },
		config = function()
			require("config.vimspector").setup()
		end,
	}
	use("wbthomason/packer.nvim")
	use({
		"windwp/nvim-ts-autotag",
		requires = "nvim-treesitter/nvim-treesitter"
	})
	use {
		'renerocksai/telekasten.nvim',
		requires = {'renerocksai/calendar-vim'}
	}
	-- NOTE: completion engine
	use { 'neoclide/coc.nvim', branch='release' }
	-- NOTE: icons in neovim
	use("ryanoasis/nerd-fonts")
	use("nvim-tree/nvim-web-devicons")
	use('folke/tokyonight.nvim') -- Color Scheme
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	-- formater
	use "vim-autoformat/vim-autoformat"
	use({
		"Pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup {
				-- your config goes here
				-- or just leave it empty :)
			}
		end,
	})
	use('voldikss/vim-floaterm')
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}
	use('nvim-lua/plenary.nvim')
	use('kazhala/close-buffers.nvim')
	-- use({
	--	'prettier/vim-prettier',
	--	pattern = {"*.js", "*.jsx","*.mjs", "*.html", "*.css", "*.lua", "*.ts", "*.tsx", "*.sass"}
	-- })
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
		ft = { "markdown" }, })
		use {
			"folke/todo-comments.nvim",
			config = function()
				require("todo-comments").setup {
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				}
			end
		}
		use("tomarrell/vim-npr")
		-- markdown language support
		use({'jakewvincent/mkdnflow.nvim'})

		-- sessions
		use "shatur/neovim-session-manager"
		-- use {
		--	'rmagatti/auto-session',
		--	config = function()
		--		require("auto-session").setup {
		--			log_level = "error",
		--			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
		--		}
		--	end
		-- }
		use "arnamak/stay-centered.nvim"
		use({
			"nvim-telescope/telescope.nvim",
			requires = {
				"nvim-telescope/telescope-live-grep-args.nvim",
				"nvim-lua/popup.nvim",
			},
			config = function ()
				require("telescope").load_extension("live_grep_args")
			end
		})
		use({"aca/emmet-ls"})
		use({"neovim/nvim-lspconfig"})
		use "terrortylor/nvim-comment"
		use('skywind3000/asyncrun.vim')
		-- html and css plugins
		use("ray-x/web-tools.nvim")
		use("norcalli/nvim-colorizer.lua")
		use("nvim-lua/popup.nvim")
		use("nvim-telescope/telescope-media-files.nvim")
		-- test
		use({
			"nvim-neotest/neotest",
			requires = {
				"nvim-lua/plenary.nvim",
				"nvim-treesitter/nvim-treesitter"
			}
		})
		use("nvim-neotest/neotest-plenary")
		use("nvim-neotest/neotest-python")
		use({
			"folke/neodev.nvim"
		})
	end,
	config = {
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}}
	)
