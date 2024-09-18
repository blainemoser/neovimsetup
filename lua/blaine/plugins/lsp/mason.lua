return {
	"williamboman/mason.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- require('gitsigns').setup() 
		-- import mason
		local mason = require("mason")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		mason_tool_installer.setup({
			ensure_installed = {
				"php-cs-fixer",
				"pint",
				"vue-language-server",
				"typescript-language-server",
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"eslint_d", -- js linter
				"intelephense", -- php
				"rustfmt", -- rust
				"rust-analyzer", -- rust
				"gopls",
				"isort",
			},
		})
	end,
}
