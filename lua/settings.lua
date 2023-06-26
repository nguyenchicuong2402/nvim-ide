-----------------------------------------------------------
-- Settings
-----------------------------------------------------------

local g = vim.g
local opt = vim.o
local bo = vim.bo
local wo = vim.wo

-- ========== Visualization ========== --
opt.termguicolors = true
opt.background = 'dark'
vim.cmd('colorscheme onedark')

-- ========== File management ========== --
opt.swapfile = false
bo.swapfile = false
opt.backup = false
opt.writebackup = false
opt.autoread = true

-- ========== Scrolling ========== --
opt.scrolloff = 8

-- ========== Indentation ========== --
opt.tabstop = 4
bo.tabstop = 4
opt.shiftwidth = 4
bo.shiftwidth = 4
opt.softtabstop = 4
bo.softtabstop = 4
opt.expandtab = true
bo.expandtab = true
opt.smartindent = true
bo.smartindent = true
opt.autoindent = true
bo.autoindent = true
opt.smarttab = true

-- ========== Number column ========== --
wo.number = true

-- ========== Search ========== --
opt.ignorecase = true
opt.incsearch = true
opt.smartcase = true
opt.hlsearch = true

-- ========== Performance ========== --
opt.lazyredraw = true
opt.ttimeoutlen = 10
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- ========== Misc ========== --
wo.wrap = false
opt.history = 10000
opt.updatetime = 300
opt.mouse = 'nvc'
opt.completeopt='menuone,preview,noinsert'
opt.hidden=true
opt.clipboard = "unnamedplus"
