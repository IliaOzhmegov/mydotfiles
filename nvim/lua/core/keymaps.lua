local opts = { noremap = true, silent = true }


-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
--vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>') -- no sure


-- not sure where to put it better so far
-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })


-- JupyterAscending
-- vim.cmd('unmap <leader><leader>x')
-- vim.keymap.set('n', "<leader><leader>x", '<Nop>', { silent = true })
-- vim.keymap.del('n', '<leader><leader>X')
-- vim.keymap.del('n', '<leader><leader>x')
-- vim.keymap.del('n', '<leader><leader>r')
-- keymap('n', "<leader><leader>X", '<Nop>', { silent = true })
-- keymap('n', "<leader><leader>r", '<Nop>', { silent = true })
keymap("n", "<leader>je", "<Plug>JupyterExecute", opts)
keymap("n", "<leader>ja", "<Plug>JupyterExecuteAll", opts)
keymap("n", "<leader>jr", "<Plug>JupyterRestart", opts)

-- NvimTree
keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)
