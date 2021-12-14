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
      "neovim/nvim-lspconfig",
      config = function()
        require("plugins/lsp")
      end
    }
  end
})
