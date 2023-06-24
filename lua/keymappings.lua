local opts = {noremap = true, silent = true}

-- ========== File Action ========== --

-- [Ctrl + S]: save file
vim.api.nvim_set_keymap('n', '<C-s>', '<Cmd>w<CR>', opts)

-- ========== Tree Explorer ========== --

-- [Ctrl + N]: toggle tree explorer
vim.api.nvim_set_keymap('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', opts)

-- [\ + r]: refresh file explorer
vim.api.nvim_set_keymap('n', '<leader>r', '<Cmd>NvimTreeRefresh<CR>', opts)

-- [\ + t]: find the currently open file in tree
vim.api.nvim_set_keymap('n', '<leader>n', '<Cmd>NvimTreeFindFile<CR>', opts)


