
-- set leader key to space
vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFocus<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', ':call CocActionAsync("jumpDefinition")<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files default_text=', {noremap = true})
vim.api.nvim_set_keymap('n', 'lg', ':Telescope live_grep default_text=', {noremap = true})
vim.api.nvim_set_keymap('n', 'gs', ':Telescope grep_string default_text=', {noremap = true})
vim.api.nvim_set_keymap('n', 'gf', ':Telescope git_files default_text=', {noremap = true})
vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {})
vim.api.nvim_set_keymap('n', '<F9>', ':LazyGit<Return>', {noremap = true})
