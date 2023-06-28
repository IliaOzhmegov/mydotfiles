local colorscheme = "gruvbox-material"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.cmd("colorscheme desert")
  return
end

vim.cmd("set background=dark") -- dark or light

vim.cmd("let g:gruvbox_material_dim_inactive_windows = 1")   -- 0 or 1
vim.cmd("let g:gruvbox_material_disable_italic_comment = 1") -- 0 or 1
vim.cmd("let g:gruvbox_material_foreground = 'material'")    -- 'material', 'mix', 'original'
vim.cmd("let g:gruvbox_material_background = 'medium'")      -- 'hard' or 'medium' or 'soft'
vim.cmd("colorscheme gruvbox-material")

