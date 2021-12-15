return require('packer').startup({
  function(use)
    -- Packer can manage itself
    use {
      'wbthomason/packer.nvim',
      config = function()
        require('plugins/packer')
      end
    }
    -- Theme
    use {
      'arcticicestudio/nord-vim',
      config = function()
        require('plugins/nord')
      end
    }
    -- Edit surround
    use { 'machakann/vim-sandwich' }
    -- Finder
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        { 'nvim-lua/plenary.nvim' },
        { 'kyazdani42/nvim-web-devicons' },
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
      },
      config = function()
        require('plugins/telescope')
      end
    }
    -- Treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      requires = {
        { 'nvim-treesitter/playground' }
      },
      config = function()
        require('plugins/treesitter')
      end
    }
    -- lualine
    use {
      'hoob3rt/lualine.nvim',
      requires = {
        { 'kyazdani42/nvim-web-devicons' }
      },
      config = function()
        require('plugins/lualine')
      end
    }
    -- LSP
    use {
      'williamboman/nvim-lsp-installer',
      requires = {
        { 'neovim/nvim-lspconfig' }
      },
      config = function()
        require("plugins/lsp")
      end
    }
    -- git diffs
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        { 'nvim-lua/plenary.nvim' }
      },
      config = function()
        require('plugins/gitsigns')
      end
    }
    -- tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        { 'kyazdani42/nvim-web-devicons' }
      },
      config = function()
        require('plugins/tree')
      end
    }
    -- autocompletion
    use {
      'hrsh7th/nvim-cmp',
      requires = {
        { 'hrsh7th/cmp-cmdline' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-nvim-lsp' },
        {
          'L3MON4D3/LuaSnip',
          requires = {
            { 'saadparwaiz1/cmp_luasnip' }
          }
        },
      },
      config = function()
        require('plugins/cmp')
      end
    }
  end
})
