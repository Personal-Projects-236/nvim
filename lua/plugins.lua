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
end)
