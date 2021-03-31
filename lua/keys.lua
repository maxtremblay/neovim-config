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
nmap('<Leader>t', ':NvimTreeToggle<CR>')

-- Window navigation
nmap('<Leader>wh', '<C-w>h')
nmap('<Leader>wj', '<C-w>j')
nmap('<Leader>wk', '<C-w>k')
nmap('<Leader>wl', '<C-w>l')

-- Turn off hlsearch
nmap('<Leader>h', ':nohlsearch<CR>')

-- Telescope
nmap('<Leader>ff', ':Telescope find_files<CR>')
nmap('<Leader>fg', ':Telescope live_grep<CR>')
nmap('<Leader>fb', ':Telescope buffers<CR>')
nmap('<Leader>fh', ':Telescope help_tags<CR>')
nmap('<Leader>fx', ':Telescope commands<CR>')
nmap('<Leader>fc', ':Telescope colorscheme<CR>')
nmap('<Leader>fs', ':Telescope spell_suggest<CR>')
nmap('<Leader>fk', ':Telescope keymaps<CR>')
nmap('<Leader>fa', ':Telescope lsp_code_actions<CR>')
nmap('<Leader>fe', ':Telescope lsp_workspace_diagnostics<CR>')
