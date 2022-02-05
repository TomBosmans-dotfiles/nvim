local null_ls = require('null-ls')
local on_attach = require('utils').on_attach

local sources = {
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.formatting.prismaFmt
}

require("null-ls").setup({
  sources = sources,
  on_attach = on_attach,
})
