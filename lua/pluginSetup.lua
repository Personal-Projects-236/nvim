require("nvim-web-devicons").setup()
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  }
}
require('nvim-ts-autotag').setup({
  filetypes = { "html" , "xml", "markdown", "javascriptreact" },
})

local home = vim.fn.expand("~/.config/nvim/notebook")

require('telekasten').setup({
  home = home,
	image_subdir = home,
  -- dir names for special notes (absolute path or subdir name)
  dailies      = home .. '/' .. 'daily',
  weeklies     = home .. '/' .. 'weekly',
  templates    = home .. '/' .. 'templates',
  template_new_daily = home .. '/' .. 'templates/daily.md',
	template_new_note = home .. '/' .. 'templates/new_note.md',
	command_palette_theme = 'popup'
})

require('mkdnflow').setup({
	to_do = {
		symbols = {' ', '-', 'X'},
		update_parents = true,
		not_started = ' ',
		in_progress = '-',
		complete = 'X'
	}
})

require("auto-session").setup {
  log_level = "error",

  cwd_change_handling = {
    restore_upcoming_session = true, -- already the default, no need to specify like this, only here as an example
    pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
    post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
      require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
    end,
  },
}

require("stay-centered")

require'lspconfig'.pyright.setup{}

local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "markdown", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})

require('nvim_comment').setup()

-- NOTE: html css plugins setup
require'web-tools'.setup({
  keymaps = {
    rename = nil,  -- by default use same setup of lspconfig
    repeat_rename = '.', -- . to repeat
  },
  hurl = {  -- hurl default
    show_headers = false, -- do not show http headers
    floating = false,   -- use floating windows (need guihua.lua)
    formatters = {  -- format the result by filetype
      json = { 'jq' },
      html = { 'prettier', '--parser', 'html' },
    },
  },
})
require'colorizer'.setup()
