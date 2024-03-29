-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

  use( 'folke/tokyonight.nvim' )
  use "EdenEast/nightfox.nvim"

  use 'mbbill/undotree'

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  })

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
        --- Uncomment these if you want to manage LSP servers from neovim
        -- {'williamboman/mason.nvim'},
        -- {'williamboman/mason-lspconfig.nvim'},

        -- LSP Support
        {'neovim/nvim-lspconfig'},
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'},
      }
  }

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
end)

