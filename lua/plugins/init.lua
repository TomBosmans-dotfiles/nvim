local config = require('config')

return require('packer').startup({
  function(use)
    -- Packer
    use { 'wbthomason/packer.nvim' }

    -- Nord
    use {
      'arcticicestudio/nord-vim',
      disable = not config.plugins.nord_vim.enabled,
      config = function() require('plugins/nord') end
    }

    -- Nightfox
    use {
      'EdenEast/nightfox.nvim',
      disable = not config.plugins.nightfox.enabled,
      config = function() require('plugins/nightfox') end
    }

    -- Which Key
    use {
      'folke/which-key.nvim',
      disable = not config.plugins.which_key.enabled,
      config = function() require('plugins/whichkey') end
    }

    -- Sandwich
    use {
      'machakann/vim-sandwich',
      disable = not config.plugins.vim_sandwich.enabled
    }

    -- Bbye
    use {
      'moll/vim-bbye',
      disable = not config.plugins.bbye.enabled,
      config = function() require('plugins/bbye') end
    }

    -- Dadbod
    use {
      'kristijanhusak/vim-dadbod-ui',
      disable = not config.plugins.dadbod.enabled,
      config = function() require('plugins/dadbod') end,
      requires = {{ 'tpope/vim-dadbod' }}
    }

    -- Autopairs
    use {
      'windwp/nvim-autopairs',
      disable = not config.plugins.nvim_autopairs.enabled,
      config = function() require('plugins/autopairs') end
    }

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      disable = not config.plugins.telescope.enabled,
      config = function() require('plugins/telescope') end,
      requires = {
        { 'nvim-lua/plenary.nvim' },
        { 'kyazdani42/nvim-web-devicons' },
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
      }
    }

    -- Treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      disable = not config.plugins.nvim_treesitter.enabled,
      config = function() require('plugins/treesitter') end,
      requires = {{ 'nvim-treesitter/playground' }}
    }

    -- Lualine
    use {
      'hoob3rt/lualine.nvim',
      disable = not config.plugins.lualine.enabled,
      config = function() require('plugins/lualine') end,
      requires = {{ 'kyazdani42/nvim-web-devicons' }}
    }

    -- LSP
    use {
      'williamboman/nvim-lsp-installer',
      disable = not config.plugins.lsp.enabled,
      config = function() require('plugins/lsp') end,
      requires = {
        { 'neovim/nvim-lspconfig' },
        { 'filipdutescu/renamer.nvim' }
      }
    }

    -- Gitsigns
    use {
      'lewis6991/gitsigns.nvim',
      disable = not config.plugins.gitsigns.enabled,
      config = function() require('plugins/gitsigns') end,
      requires = {{ 'nvim-lua/plenary.nvim' }}
    }

    -- Neogit
    use {
      'TimUntersberger/neogit',
      disable = not config.plugins.neogit.enabled,
      config = function() require('plugins/neogit') end,
      requires = {
        { 'nvim-lua/plenary.nvim' },
        { 'sindrets/diffview.nvim' }
      }
    }

    -- Diffview
    use {
      'sindrets/diffview.nvim',
      disable = not config.plugins.diffview.enabled,
      config = function() require('plugins/diffview') end
    }

    -- Nvim Tree
    use {
      'kyazdani42/nvim-tree.lua',
      disable = not config.plugins.nvim_tree.enabled,
      config = function() require('plugins/tree') end,
      requires = {{ 'kyazdani42/nvim-web-devicons' }}
    }

    -- CMP
    use {
      'hrsh7th/nvim-cmp',
      disable = not config.plugins.cmp.enabled,
      config = function() require('plugins/cmp') end,
      requires = {
        { 'hrsh7th/cmp-cmdline' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'kristijanhusak/vim-dadbod-completion' },
        { 'onsails/lspkind-nvim' },
        { 'L3MON4D3/LuaSnip', requires = {{ 'saadparwaiz1/cmp_luasnip' }} }
      }
    }
  end,
  config = require('plugins/packer')
})
