-- set leader key to space
vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<C-P>", ":Telescope find_files default_text=", { noremap = true })
vim.api.nvim_set_keymap("n", "lg", ":Telescope live_grep default_text=", { noremap = true })
vim.api.nvim_set_keymap("n", "gs", ":Telescope grep_string default_text=", { noremap = true })
vim.api.nvim_set_keymap("n", "gf", ":Telescope git_files default_text=", { noremap = true })
vim.api.nvim_set_keymap("n", "<F8>", ":TagbarToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "jk", "<ESC>", {})
vim.api.nvim_set_keymap("n", "<F9>", ":LazyGit<Return>", { noremap = true })

-- format a JSON fast
vim.api.nvim_set_keymap("n", "jq", ":%!jq . <CR>", {})

-- Bring up the tree
vim.api.nvim_set_keymap("n", "<C-t>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

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
