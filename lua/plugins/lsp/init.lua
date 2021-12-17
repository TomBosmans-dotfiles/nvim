local utils = require('utils')
local lsp_installer = require('nvim-lsp-installer')

lsp_installer.on_server_ready(function(server)
  local opts = { on_attach = utils.on_attach }

  if server.name == "sumneko_lua" then
    local sumneko_opts = require('plugins/lsp/sumneko_lua')
    opts = vim.tbl_deep_extend('force', sumneko_opts, opts)
  end

  server:setup(opts)
end)


lsp_installer.settings({
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})

local mappings_utils = require('renamer.mappings.utils')
require('renamer').setup {
  -- The popup title, shown if `border` is true
  title = 'Rename',
  -- The padding around the popup content
  padding = {
    top = 0,
    left = 0,
    bottom = 0,
    right = 0,
  },
  -- Whether or not to shown a border around the popup
  border = true,
  -- The characters which make up the border
  border_chars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
  -- Whether or not to highlight the current word references through LSP
  show_refs = true,
  -- Whether or not to add resulting changes to the quickfix list
  with_qf_list = true,
  -- Whether or not to enter the new name through the UI or Neovim's `input`
  -- prompt
  with_popup = true,
  -- The keymaps available while in the `renamer` buffer. The example below
  -- overrides the default values, but you can add others as well.
  mappings = {
    ['<c-i>'] = mappings_utils.set_cursor_to_start,
    ['<c-a>'] = mappings_utils.set_cursor_to_end,
    ['<c-e>'] = mappings_utils.set_cursor_to_word_end,
    ['<c-b>'] = mappings_utils.set_cursor_to_word_start,
    ['<c-c>'] = mappings_utils.clear_line,
    ['<c-u>'] = mappings_utils.undo,
    ['<c-r>'] = mappings_utils.redo,
  },
  -- Custom handler to be run after successfully renaming the word. Receives
  -- the LSP 'textDocument/rename' raw response as its parameter.
  handler = nil,
}
