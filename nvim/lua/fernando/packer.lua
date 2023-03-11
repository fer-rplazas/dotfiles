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
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},           -- Optional
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},         -- Required
          {'hrsh7th/cmp-nvim-lsp'},     -- Required
          {'hrsh7th/cmp-buffer'},       -- Optional
          {'hrsh7th/cmp-path'},         -- Optional
          {'saadparwaiz1/cmp_luasnip'}, -- Optional
          {'hrsh7th/cmp-nvim-lua'},     -- Optional

          -- Snippets
          {'L3MON4D3/LuaSnip'},             -- Required
          {'rafamadriz/friendly-snippets'}, -- Optional
      }
  }


  use {
      "zbirenbaum/copilot.lua",
      -- cmd = "Copilot",
      -- event = "InsertEnter",
      -- config = function()
      --     require("copilot").setup({})
      -- end,
  }
  use {
      "zbirenbaum/copilot-cmp",
      after = { "copilot.lua" },
      --     config = function ()
      --         require("copilot_cmp").setup()
      --     end
      }
  
  -- Extra snippet info:
  -- use 'onsails/lspkind.nvim'

  -- Telescope:
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Other utils:
  use 'nelstrom/vim-visual-star-search'
  use 'tpope/vim-commentary'
  use 'Yggdroot/indentLine'

  -- Colorschemes:
  use 'folke/tokyonight.nvim'
  use 'gruvbox-community/gruvbox'

  end)

