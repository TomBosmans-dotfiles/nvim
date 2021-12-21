vim.g.fzf_layout = { window = { width = 0.7, height = 0.6, yoffset = 0.1, xoffset = 0.5, border = "sharp" } }
vim.g.fzf_preview_window = "down:60%"

vim.g.fzf_colors = {
  ["fg"] = { "fg", "Normal" },
  ["bg"] = { "bg", "Normal" },
  ["hl"] = { "fg", "Comment" },
  ["fg+"] = { "fg", "CursorLine", "CursorColumn", "Normal" },
  ["bg+"] = { "bg", "CursorLine", "CursorColumn" },
  ["hl+"] = { "fg", "Statement" },
  ["info"] = { "fg", "PreProc" },
  ["border"] = { "fg", "Ignore" },
  ["prompt"] = { "fg", "Conditional" },
  ["pointer"] = { "fg", "Exception" },
  ["marker"] = { "fg", "Keyword" },
  ["spinner"] = { "fg", "Label" },
  ["header"] = { "fg", "Comment" },
}
