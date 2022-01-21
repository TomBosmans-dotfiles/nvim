local U = {}
U.map = require('utils/map').map
U.load_theme = require('utils/theme').load_theme
U.on_attach = require('utils/lsp').on_attach
U.command_output = require('utils/command_output').command_output
return U
