vim.g.nvim_tree_side = 'left' 
vim.g.nvim_tree_width = 40 
vim.g.nvim_tree_ignore = { '.git' }

vim.g.nvim_tree_auto_open = 1 -- 0 by default, opens the tree when typing `vim $DIR` or `vim`
vim.g.nvim_tree_auto_close = 1  -- 0 by default, closes the tree when it's the last window

vim.g.nvim_tree_git_hl = 1 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).

vim.g.nvim_tree_show_icons = { 
  git = 0, 
  folders = 1, 
  files = 1
}

-- Documentation at 
-- https://github.com/kyazdani42/nvim-tree.lua
