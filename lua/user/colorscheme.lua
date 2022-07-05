local colorscheme = "catppuccin"

-- load catppuccin
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]

-- enable catppuccin_comments italics
vim.g.catppuccin_comments = "italics"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
