local map = vim.api.nvim_set_keymap

local default_options = {
  noremap = true,
  silent = true
}

-- Normal mode map with default options
local function nmap(key, action)
  map('n', key, action, default_options)
end

-- Make space the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

-- Toggle tree
nmap('<Space>t', ':NvimTreeToggle<CR>')

-- Window navigation
nmap('<Leader>wh', '<C-w>h')
nmap('<Leader>wj', '<C-w>j')
nmap('<Leader>wk', '<C-w>k')
nmap('<Leader>wl', '<C-w>l')

-- Turn off hlsearch
nmap('<Leader>h', ':nohlsearch<CR>')
