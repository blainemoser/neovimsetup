-- set leader key to space
vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<C-P>", ":Telescope find_files default_text=", { noremap = true })
vim.api.nvim_set_keymap("n", "ff", ":Telescope live_grep default_text=", { noremap = true })
vim.api.nvim_set_keymap("n", "gs", ":Telescope grep_string default_text=", { noremap = true })
vim.api.nvim_set_keymap("n", "gf", ":Telescope git_files default_text=", { noremap = true })
vim.api.nvim_set_keymap("n", "<F8>", ":TagbarToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "jk", "<ESC>", {})
vim.api.nvim_set_keymap("n", "<F9>", ":LazyGit<Return>", { noremap = true })

-- tab mappings
vim.api.nvim_set_keymap("n", "<C-l>h", ":tabr<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>l", ":tabl<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>j", ":tabp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>k", ":tabn<CR>", { noremap = true, silent = true })

-- Use for when you want to input a number
vim.api.nvim_set_keymap("n", "<C-l>f", ":tabn", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-t>", ":tabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-x>", ":tabc<CR>", { noremap = true, silent = true })

-- Clear search
vim.api.nvim_set_keymap("n", "cs", ":noh<CR>", { noremap = true, silent = true })

-- Bring up the tree
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Double quotes
vim.api.nvim_set_keymap("i", '"', '""<left>', { noremap = true, silent = true })

-- Single quotes
vim.api.nvim_set_keymap("i", "'", "''<left>", { noremap = true, silent = true })

-- Parentheses
vim.api.nvim_set_keymap("i", "(", "()<left>", { noremap = true, silent = true })

-- Square brackets
vim.api.nvim_set_keymap("i", "[", "[]<left>", { noremap = true, silent = true })

-- Curly braces
vim.api.nvim_set_keymap("i", "{", "{}<left>", { noremap = true, silent = true })

-- Newline and curly braces
vim.api.nvim_set_keymap("i", "{<CR>", "{<CR>}<ESC>O", { noremap = true, silent = true })

-- Newline, semicolon, and curly braces
vim.api.nvim_set_keymap("i", "{;<CR>", "{<CR>};<ESC>O", { noremap = true, silent = true })

-- autocomment
vim.api.nvim_set_keymap("n", "<C-_>", "<ESC>0i//<ESC>", { noremap = true, silent = true })

-- harpoon
vim.keymap.set("n", "mm", function()
	require("harpoon.ui").toggle_quick_menu()
end, { noremap = true })

vim.keymap.set("n", "ma", function()
	require("harpoon.mark").add_file()
end, { noremap = true })

vim.keymap.set("n", "mn", function()
	require("harpoon.ui").nav_next()
end, { noremap = true })

vim.keymap.set("n", "mp", function()
	require("harpoon.ui").nav_prev()
end, { noremap = true })
