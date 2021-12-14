local require_config = require('utils').require_config

return require('packer').startup({
  function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim', config = require_config('packer') }
    -- Theme
    use { 'arcticicestudio/nord-vim', config = require_config('nord') }
    -- Finder
    use {
      'nvim-telescope/telescope.nvim',
      config = require_config('telescope'),
      requires = {
        { 'nvim-lua/plenary.nvim' },
        { 'kyazdani42/nvim-web-devicons' },
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
      },
    }
  end,

  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
})
