-----------------------------------------------------------
-- Key mappings
-----------------------------------------------------------

local opts = {noremap = true, silent = true}
local set_keymap = vim.api.nvim_set_keymap

-- ========== File Action ========== --

-- [Ctrl + S]: save file
set_keymap('n', '<C-s>', '<Cmd>w<CR>', opts)

-- ========== Editing Helper ========== --

-- [Ctrl + /]: toggle comment line
set_keymap('n', '<C-/>', 'gcc', opts)

-- ========== Terminal ========== --

-- [Ctrl + \]: toggle terminal
-- set_keymap('n'. '<C-\>', '<Cmd>ToggleTerm<CR>', opts)

-- [ESC]: exit terminal mode
set_keymap('t', '<ESC>', [[<C-\>]], { silent = true })

-- ========== Windows ========== --

-- [Ctrl + h/j/k/l]: window navigator
set_keymap('n', '<C-h>', '<C-w>h', opts)
set_keymap('n', '<C-j>', '<C-w>j', opts)
set_keymap('n', '<C-k>', '<C-w>k', opts)
set_keymap('n', '<C-l>', '<C-w>l', opts)

-- [Ctrl + Arrow]: resize window
set_keymap('n', '<C-Up>', ':resize -2<CR>', opts)
set_keymap('n', '<C-Down>', ':resize +2<CR>', opts)
set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

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

-- [Ctrl + []: previous tab
set_keymap('n', '<C-[>', '<Cmd>BufferPrevious<CR>', opts)

-- [Ctrl + ]]: next tab
set_keymap('n', '<C-]>', '<Cmd>BufferNext<CR>', opts)

-- [Ctrl + W]: close tab
set_keymap('n', '<C-w>', '<Cmd>BufferClose<CR>', opts)

-- [Alt + P]: pin tab
set_keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
