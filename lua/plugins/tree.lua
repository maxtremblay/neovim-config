vim.g.nvim_tree_side = 'left'
vim.g.nvim_tree_width = 40
vim.g.nvim_tree_ignore = { '.git' }
vim.g.nvim_tree_git_hl = 1 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1
}

-- Documentation at
-- https://github.com/kyazdani42/nvim-tree.lua
--
-- following options are the default
require'nvim-tree'.setup {
  -- closes neovim automatically when the tree is the last **WINDOW** in the view
  auto_close = true,
  -- hijacks new directory buffers when they are opened.
  update_to_buf_dir   = {
    -- enable the feature
    enable = true,
    -- allow to open the tree if it was previously closed
    auto_open = true,
  },
}

