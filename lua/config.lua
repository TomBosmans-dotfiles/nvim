return {
  -- nord, nightfox, nordfox, dayfox, dawnfox, duskfox
  -- github_dark, github_dimmed, github_dark_default,
  -- github_dark_colorblind, github_light, github_light_default
  -- github_light_colorblind
  theme = 'github_dark', 
  finder = 'telescope', -- fzf, telescope
  git = 'fugutive', -- neogit, fugutive
  spotify_enabled = true,
  plugins = {
    nord_vim = { enabled = true },
    nightfox = { enabled = true },
    which_key = { enabled = true },
    vim_sandwich = { enabled = true },
    bbye = { enabled = true },
    dadbod = { enabled = true },
    nvim_autopairs = { enabled = true },
    telescope = { enabled = true },
    fzf = { enabled = true },
    nvim_treesitter = { enabled = true },
    lualine = { enabled = true },
    lsp = { enabled = true },
    gitsigns = { enabled = true },
    neogit = { enabled = true },
    fugutive = { enabled = true },
    diffview = { enabled = true },
    nvim_tree = { enabled = true },
    cmp = { enabled = true },
    auto_sessions = { enabled = true },
    trouble = { enabled = true },
    github_theme = { enabled = true },
    indent_blankline = { enabled = true },
  }
}
