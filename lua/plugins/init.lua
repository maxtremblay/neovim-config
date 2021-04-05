local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Explorer tree
  use 'kyazdani42/nvim-web-devicons' -- icons
  use 'kyazdani42/nvim-tree.lua'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'

  -- Snippets
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'rafamadriz/friendly-snippets'

  -- Colors
  use { 'dracula/vim', as = 'dracula' }
  use  'arcticicestudio/nord-vim'
  use 'ayu-theme/ayu-vim'
  use 'rakr/vim-one'

  -- Telescope (awesome fuzzy finder)
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Comments toggle
  use 'b3nj5m1n/kommentary'

  -- Languages
  use  'wlangstroth/vim-racket'
end)

