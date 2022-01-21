local config = require('config')
if config.theme ~= 'github_dark'
and config.theme ~= 'github_dimmed'
and config.theme ~= 'github_dark_default'
and config.theme ~= 'github_dark_colorblind'
and config.theme ~= 'github_light'
and config.theme ~= 'github_light_default'
and config.theme ~= 'github_light_colorblind'
then return
end

require("github-theme").setup({
  theme_style = config.theme:gsub('github_', ''),
  function_style = "italic",
--  sidebars = {"qf", "vista_kind", "terminal", "packer"},
})
