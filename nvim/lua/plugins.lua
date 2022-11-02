
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Treesitter (syntax parsing and highlighting):
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  
  -- Formatter:
  use 'vim-autoformat/vim-autoformat'

  -- LSP:
  use 'neovim/nvim-lspconfig'

  -- Completion:
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Snippet Engine:
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip' -- cmp integration

  -- Snippets to use:
  use 'rafamadriz/friendly-snippets'

  -- Extra snippet info:
  use 'onsails/lspkind.nvim'

  -- Telescope:
  use 'nvim-lua/popup.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Other utils:
  use 'nelstrom/vim-visual-star-search'
  use 'junegunn/limelight.vim'
  use 'tpope/vim-commentary'
  use 'Yggdroot/indentLine'


  -- Colorschemes:
  use 'folke/tokyonight.nvim'
  use 'gruvbox-community/gruvbox'

  end)
