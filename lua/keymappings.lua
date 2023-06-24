local opts = {noremap = true, silent = true}
local set_keymap = vim.api.nvim_set_keymap

-- ========== File Action ========== --

-- [Ctrl + S]: save file
set_keymap('n', '<C-s>', '<Cmd>w<CR>', opts)

-- ========== Editing Helper ========== --

-- [Ctrl + /]: toggle comment line
set_keymap('n', '<C-/>', 'gcc', opts)

-- ========== Tree Explorer ========== --

-- [Ctrl + N]: toggle tree explorer
set_keymap('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', opts)

-- [\ + r]: refresh file explorer
set_keymap('n', '<leader>r', '<Cmd>NvimTreeRefresh<CR>', opts)

-- [\ + t]: find the currently open file in tree
set_keymap('n', '<leader>n', '<Cmd>NvimTreeFindFile<CR>', opts)

-- ========= Search - Telescope ========== --

-- [Ctrl + P]: search file
set_keymap('n', '<C-p>', "<Cmd>lua require'telescope.builtin'.find_files()<CR>", {silent=false, noremap=true})

-- [Ctrl + Shift + F]: find content all file
set_keymap('n', '<C-S-f>', "<Cmd>lua require'telescope.builtin'.live_grep()<CR>", opts)

-- ========== Tab bar ==========--

-- [Alt + ,]: previous tab
set_keymap('n', '<C-[>', '<Cmd>BufferPrevious<CR>', opts)

-- [Alt + .]: next tab
set_keymap('n', '<C-]>', '<Cmd>BufferNext<CR>', opts)
