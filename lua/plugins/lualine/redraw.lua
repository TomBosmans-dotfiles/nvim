if _G.Tabline_timer == nil then
  _G.Tabline_timer = vim.loop.new_timer()
else
  _G.Tabline_timer:stop()
end

_G.Tabline_timer:start(
  0,                                              -- never timeout
  100,                                            -- repeat every 1000 ms
  vim.schedule_wrap(function()                    -- updater function
    vim.api.nvim_command('redrawtabline')
  end)
)
