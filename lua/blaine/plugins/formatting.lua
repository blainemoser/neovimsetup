return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			notify_on_error = true,
			formatters_by_ft = {
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				typescript = { "prettier" },
				vue = { "prettier" },
				css = { "prettier" },
				scss = { "prettier" },
				less = { "prettier" },
				json = { "prettier" },
				jsonc = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				handlebars = { "prettier" },
				typescriptreact = { "prettier" },
				graphql = { "prettier" },
				svelte = { "prettier" },
				html = { "prettier" },
				yaml = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				php = { { "pint", "php-cs-fixer" } },
				rust = { "rustfmt" },
				go = { "gofmt" },
			},
			formatters = {
				["php-cs-fixer"] = {
					command = "php-cs-fixer",
					args = {
						"fix",
						"--rules=@PSR12", -- Formatting preset. Other presets are available, see the php-cs-fixer docs.
						"$FILENAME",
					},
					stdin = false,
				},
			},
		})

		vim.keymap.set({ "n", "v" }, "<F7>", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 5000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
