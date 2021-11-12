local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Explorer tree
  use 'kyazdani42/nvim-web-devicons' -- icons
  use 'kyazdani42/nvim-tree.lua'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'kabouzeid/nvim-lspinstall'

  -- Snippets
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'rafamadriz/friendly-snippets'

  -- Colors
  use 'Mofiqul/dracula.nvim'
  use 'ayu-theme/ayu-vim'
  use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use 'tjdevries/colorbuddy.vim'
  use 'Th3Whit3Wolf/onebuddy'
  use 'maaslalani/nordbuddy'
  use 'marko-cerovac/material.nvim'
  use 'rmehri01/onenord.nvim'


  -- Telescope (awesome fuzzy finder)
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Comments toggle
  use 'b3nj5m1n/kommentary'

  -- Languages
  use 'wlangstroth/vim-racket'
  use 'PhilT/vim-fsharp'
  use 'neovimhaskell/haskell-vim'
  use 'jakwings/vim-pony'
  use 'JuliaEditorSupport/julia-vim'
  use 'ziglang/zig.vim'

  -- Terminal
  use {"akinsho/nvim-toggleterm.lua"}

  -- Hop (cool motions)
  use 'phaazon/hop.nvim'

  -- Status line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  } 
  

  -- Tree sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
end)

require('plugins/completion')
require('plugins/terminal')
require('plugins/tree')
require('plugins/lualine')
require('plugins/tree-sitter')
require('plugins/lsp-install')
