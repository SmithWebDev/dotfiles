local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

local packer = require 'packer'
require('smithwebdev.plugins.config')

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
--
--  -- Lua Guide Info
--  use 'nanotee/nvim-lua-guide'
--
  -- AutoCompletion
  use 'hrsh7th/nvim-compe'
--  use 'hrsh7th/vim-vsnip'
--  use 'hrsh7th/vim-vsnip-integ'
  use 'mattn/emmet-vim'

  -- Explorer
--  use 'kyazdani42/nvim-tree.lua'

  -- FileType Snippets (VS-Code)
--  use 'rubyide/vscode-ruby'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
--  use 'onsails/lspkind-nvim'
--  use 'kosayoda/nvim-lightbulb'
  use 'kabouzeid/nvim-lspinstall'
  use 'nvim-lua/lsp-status.nvim'
  use 'creativenull/diagnosticls-nvim'

  -- Ruby/ Rails
--  use 'tpope/vim-endwise'
--  use 'tpope/vim-rails'
  
--  -- Treesitter
--  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
--  use 'sheerun/vim-polyglot'
--  use 'nvim-treesitter/nvim-treesitter-refactor'
--  use 'nvim-treesitter/playground'
--
--  -- Status Line and Bufferline
--  use 'glepnir/galaxyline.nvim'
--  use 'romgrk/barbar.nvim'
--
--  -- Icons
--  use 'kyazdani42/nvim-web-devicons'
--  use 'ryanoasis/vim-devicons'
--
  -- Telescope
--  use 'nvim-telescope/telescope.nvim'
--  use 'nvim-lua/plenary.nvim'
--  use 'nvim-lua/popup.nvim'
--  use 'nvim-telescope/telescope-fzy-native.nvim'
--  use 'nvim-telescope/telescope-media-files.nvim'

--  -- Git
--  use 'TimUntersberger/neogit'
--  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
--  use 'f-person/git-blame.nvim'
--  use 'tpope/vim-fugitive'
--  use 'tpope/vim-rhubarb'
--
--  -- Easily Create Gists
--  use 'mattn/vim-gist'
--  use 'mattn/webapi-vim'
--
--  -- Webdev
--  use 'windwp/nvim-ts-autotag'
--  use 'gennaro-tedesco/nvim-jqx'
--  use 'turbio/bracey.vim'
--
--  -- Marks & Registers
--  use 'gennaro-tedesco/nvim-peekup'
--  use 'kshenoy/vim-signature'


--
  -- General Plugins
--  use 'windwp/nvim-autopairs'
--  use 'tjdevries/colorbuddy.nvim'
--  use 'bkegley/gloombuddy'
--  use 'tpope/vim-surround'
--  use 'kevinhwang91/nvim-bqf'
--  use 'unblevable/quick-scope'
--  use 'airblade/vim-rooter'
--  use 'kevinhwang91/rnvimr'
--  use 'mhinz/vim-startify'
--  use 'metakirby5/codi.vim'
--  use 'psliwka/vim-smoothie'
--  use 'moll/vim-bbye'
--  use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
--  use 'liuchengxu/vim-which-key'
--  use 'voldikss/vim-floaterm'
--  use 'liuchengxu/vista.vim'
--  use 'terrortylor/nvim-comment'
--  use 'bfredl/nvim-miniyank'
--  use 'junegunn/goyo.vim'
--  use 'andymass/vim-matchup'
--  use 'phaazon/hop.nvim'
--  use 'tpope/vim-sleuth'
end)

require('smithwebdev.plugins.config.setup')
