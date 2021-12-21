local telescope = require('telescope')

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
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      theme = "dropdown",
      previewer = false,
      mappings = {
        i = {
          ['<c-d>'] = 'delete_buffer'
        },
        n = {
          ['<c-d>'] = 'delete_buffer'
        }
      }
    }
  },
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
