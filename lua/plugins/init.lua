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
    -- Better way to close buffers
    use {
      'moll/vim-bbye',
      config = function()
        require('plugins/bbye')
      end
    }
    -- Database
    use {
      'kristijanhusak/vim-dadbod-ui',
      requires = {
        { 'tpope/vim-dadbod' }
      },
      config = function()
        require('plugins/dadbod')
      end
    }
    -- Autopair
    use {
      'windwp/nvim-autopairs',
      config = function()
        require('plugins/autopairs')
      end
    }
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
        { 'neovim/nvim-lspconfig' },
        { 'filipdutescu/renamer.nvim' }
      },
      config = function()
        require("plugins/lsp")
      end
    }
    -- GIT
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        { 'nvim-lua/plenary.nvim' }
      },
      config = function()
        require('plugins/gitsigns')
      end
    }
    use {
      'TimUntersberger/neogit',
      requires = {
        { 'nvim-lua/plenary.nvim' },
        { 'sindrets/diffview.nvim' }
      },
      config = function()
        require('plugins/neogit')
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
        { 'kristijanhusak/vim-dadbod-completion' },
        { 'onsails/lspkind-nvim' },
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
