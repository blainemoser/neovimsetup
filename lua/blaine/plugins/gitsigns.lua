return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local signs = require("gitsigns")
		signs.setup({ auto_attach = true, attach_to_untracked = false, current_line_blame = true })
	end,
}
