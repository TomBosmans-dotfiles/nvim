local config = require('config')
local nightfox = require('nightfox')

if  config.theme ~= 'nightfox'
and config.theme ~= 'nordfox'
and config.theme ~= 'dayfox'
and config.theme ~= 'dawnfox'
and config.theme ~= 'duskfox'
then return
end

nightfox.setup({
  fox = config.theme,
  styles = {
    comments = "italic", -- change style of comments to be italic
    keywords = "bold", -- change style of keywords to be bold
    functions = "italic,bold" -- styles can be a comma separated list
  }
})

-- Load the configuration set above and apply the colorscheme
nightfox.load()
