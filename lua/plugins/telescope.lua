local telescope = require('telescope')
local map = require('utils').map

map('n', '<leader>ff', ':Telescope git_files <CR>')
map('n', '<leader>fb', ':Telescope buffers <CR>')
map('n', '<leader>fs', ':SearchSession <CR>')

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ['<C-h>'] = 'which_key'
      },
      n = {
        ['<C-h>'] = 'which_key'
      }
    }
  },
  pickers = {},
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = 'smart_case',        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
})

telescope.load_extension('fzf')
telescope.load_extension('session-lens')
