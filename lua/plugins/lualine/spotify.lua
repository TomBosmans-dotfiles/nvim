local config = require('config')
local Spotify = {}

if config.spotify_enabled then
  local spotify = require('nvim-spotify').status
  spotify:start()

  function Spotify.spotifyLogo()
    return '  '
  end

  function Spotify.currentSong()
    local listen = spotify.listen():gsub('▶ ', ''):gsub('⏸ ', '')
    local song, _, artist = listen:match('^(.*)(by)(.*)$')
    return ' '..song..'ﴁ'..artist
  end

  function Spotify.show()
    return spotify.listen() ~= ''
  end
else
  function Spotify.spotifyLogo()
    return nil
  end

  function Spotify.currentSong()
    return nil
  end

  function Spotify.show()
    return false
  end
end

return Spotify
