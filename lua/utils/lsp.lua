local U = {}

function U.on_attach(client, bufnr)
  local config = require('config')
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  -- buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua require("renamer").rename()<cr>', opts) -- from renamer
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  buf_set_keymap('n', '<space>gD', ':lua vim.lsp.buf.declaration() <CR>', opts)
  if config.plugins.telescope.enabled then
    buf_set_keymap('n', '<space>gd', ':Telescope lsp_definitions <CR>', opts)
    buf_set_keymap('n', '<space>gi', ':Telescope lsp_implementations <CR>', opts)
    buf_set_keymap('n', '<space>gr', ':Telescope lsp_references <CR>', opts)
    buf_set_keymap('n', '<space>ca', ':Telescope lsp_code_actions <CR>', opts)
    buf_set_keymap('n', '<space>D', ':Telescope lsp_type_definitions <CR>', opts)

    buf_set_keymap('n', '<space>ds', ':Telescope lsp_document_symbols <CR>', opts)
    buf_set_keymap('n', '<space>ws', ':Telescope lsp_workspace_symbols <CR>', opts)
  else
    buf_set_keymap('n', '<space>gd', ':lua vim.lsp.buf.definition() <CR>', opts)
    buf_set_keymap('n', '<space>gi', ':lua vim.lsp.buf.implementation() <CR>', opts)
    buf_set_keymap('n', '<space>gr', ':lua vim.lsp.buf.references() <CR>', opts)
    buf_set_keymap('n', '<space>ca', ':lua vim.lsp.buf.code_action() <CR>', opts)
    buf_set_keymap('n', '<space>D', ':lua vim.lsp.buf.type_definition() <CR>', opts)
  end
end

return U
