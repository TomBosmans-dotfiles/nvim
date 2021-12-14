local require_config = require('utils').require_config

return require('packer').startup({
  function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim', config = require_config('packer') }
  end,

  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
})
