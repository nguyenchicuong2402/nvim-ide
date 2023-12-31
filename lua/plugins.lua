-----------------------------------------------------------
-- Plugins
-----------------------------------------------------------

local fn = vim.fn
local installPath = DATA_PATH..'/site/pack/packer/start/packer.nvim'

local packerBootstrap = nil
if fn.empty(fn.glob(installPath)) > 0 then
  packerBootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', installPath})
  vim.cmd [[packadd packer.nvim]]
end

local packer = require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- =========== UI ========== --
    use "olimorris/onedarkpro.nvim"
    use 'nvim-tree/nvim-web-devicons'
    use 'tpope/vim-surround'
    use 'scrooloose/nerdcommenter'
    use 'akinsho/toggleterm.nvim'
    use 'arkav/lualine-lsp-progress'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- ========= Git ========== --
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    use 'akinsho/git-conflict.nvim'

    -- ========== LSP ========== --
    --use {
    --    'neovim/nvim-lspconfig',
    --    'williamboman/nvim-lsp-installer',
    --}
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim'}
    use 'hrsh7th/nvim-cmp'
    use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' }
    use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }
    use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }
    use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' }
    use 'folke/lsp-trouble.nvim'
    use 'folke/lsp-colors.nvim'
    use 'tami5/lspsaga.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- ========== Utilities ========== --
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'mhinz/vim-startify'
    use {'edluffy/hologram.nvim'}
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-live-grep-args.nvim' }
        },
        config = function()
            require('telescope').load_extension('live_grep_args')
        end
    }
    use {"kevinhwang91/nvim-bqf"}

    -- better highlighting
    -- use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- ========== Editing support ========== --
    use 'RRethy/vim-illuminate'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'numToStr/Comment.nvim'
    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
    use {
        'folke/todo-comments.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' }
        }
    }


    if packerBootstrap then
        require('packer').sync()
    end
end)

-- plugin specific configs go here
require('configs/git/git-conflict')
require('configs/git/gitsigns')

require('configs/nvim-cmp')
require('configs/telescope')
require('configs/nvim-tree')
-- require('configs/nvim-treesitter')
require('configs/lsp-colors')
require('configs/lsp-trouble')
require('configs/lspsaga')
require('configs/lualine')
require('configs/indent-guide-lines')
require('configs/comment')
require('configs/todo')
require('configs/terminal')
require('configs/tab')
require('configs/image')

return packer
