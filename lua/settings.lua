local g = vim.g
local opt = vim.o
local bo = vim.bo
local wo = vim.wo

-- ========== Visualization ========== --

opt.termguicolors = true
opt.background = 'dark'
vim.cmd('colorscheme onedark')

-- ================= File management ================= --

-- swapfile has global & local config, eventhough help says otherwise
opt.swapfile = false 						-- can open already open files
bo.swapfile = false
opt.backup = false
opt.writebackup = false
opt.autoread = true 						-- auto file change detection

-- ================= Scrolling ================= --

opt.scrolloff = 8 						-- start scrolling when 8 lines away from margins

-- ================= Indentation ================= --

-- pay attention to 'bo' (buffer local options) and 'opt' (global options)
-- see :help options.txt

-- for some reason these values need to be set in both o and bo objects
-- eventhough these options are supposed to be local to buffer
opt.tabstop = 4					    	-- maximum width of tab character (measured in spaces)
bo.tabstop = 4
opt.shiftwidth = 4 	    				-- size of indent (measured in spaces), should equal tabstop
bo.shiftwidth = 4
opt.softtabstop = 4 	  					-- should be the same as the other two above
bo.softtabstop = 4
opt.expandtab = true    					-- expand tabs to spaces
bo.expandtab = true    					-- expand tabs to spaces
opt.smartindent = true  					-- smart indenting on new line for C-like programs
bo.smartindent = true
opt.autoindent = true   					-- copy the indentation from previous line
bo.autoindent = true
opt.smarttab = true 	  					-- tab infront of a line inserts blanks based on shiftwidth

-- ================= Number column ================= --

wo.number = true

-- ================= Search ================= --

opt.ignorecase = true 					-- Ignorecase when searching
opt.incsearch = true						-- start searching on each keystroke
opt.smartcase = true						-- ignore case when lowercase, match case when capital case is used
opt.hlsearch = true						-- highlight the search results

-- ================= Performance ================= --

opt.lazyredraw = true 					-- useful for when executing macros.
opt.ttimeoutlen = 10  					-- ms to wait for a key code seq to complete

-- ================= Misc ================= --

wo.wrap = false 						-- don't wrap long text into multiple lines
opt.history = 10000 						-- numbers of entries in history for ':' commands and search patterns (10000 = max)
opt.updatetime = 300 						-- used for CursorHold event (for document highlighting detection)
opt.mouse = 'nv' 						-- allow mose in normal & visual mode

-- better autocomplete behaviour
-- menuone - show popup menu also when there is only one match available
-- preview - show extra information about currently selected completion
-- noinsert - do not insert any text for match until the user selects it from the menu
opt.completeopt='menuone,preview,noinsert'

-- allows hidden buffers
-- this means that a modified buffer doesn't need to be saved when changing
-- tabs/windows.
opt.hidden=true

-- Copy paste between vim and everything else
opt.clipboard = "unnamedplus"

