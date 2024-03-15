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
				php = { "pretty-php" },
				rust = { "rustfmt" },
				go = { "gofmt" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<F7>", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
