local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

local packer = require 'packer'
require 'smithwebdev.plugins.config'.init()

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

-- Lua Guide Info
  use 'nanotee/nvim-lua-guide'

-- Completion
  use 'cohama/lexima.vim'
  use 'hrsh7th/nvim-compe'
  use 'mattn/emmet-vim'
  --use '9mm/vim-closer'
  use 'rstacruz/vim-hyperstyle'

-- Explorer
  use 'kyazdani42/nvim-tree.lua'

-- Snippets
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'rafamadriz/friendly-snippets'
--
-- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'folke/lsp-trouble.nvim'
--  use 'onsails/lspkind-nvim'
--  use 'kosayoda/nvim-lightbulb'
  use 'kabouzeid/nvim-lspinstall'
  use 'nvim-lua/lsp-status.nvim'
  use 'creativenull/diagnosticls-nvim'

-- Ruby/ Rails
  use 'tpope/vim-endwise'
  use 'tpope/vim-rails'

-- File Converter
  use 'vim-pandoc/vim-pandoc'
  use 'vim-pandoc/vim-pandoc-syntax'

-- Treesitter
--  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'sheerun/vim-polyglot'
--  use 'nvim-treesitter/nvim-treesitter-refactor'
--  use 'nvim-treesitter/playground'

-- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

-- Status Line and Bufferline
  use 'glepnir/galaxyline.nvim'
  use 'romgrk/barbar.nvim'

-- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'windwp/nvim-spectre'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

-- Git
  use 'ThePrimeagen/git-worktree.nvim'
--  use 'TimUntersberger/neogit'
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
--  use 'f-person/git-blame.nvim'
--  use 'tpope/vim-fugitive'
--  use 'tpope/vim-rhubarb'

-- Easily Create Gists
--  use 'mattn/vim-gist'
--  use 'mattn/webapi-vim'

-- Testing
  use 'rcarriga/vim-ultest'
  use 'vim-test/vim-test'

-- Webdev
--  use 'windwp/nvim-ts-autotag'
--  use 'gennaro-tedesco/nvim-jqx'
  use 'andrewradev/tagalong.vim'
  use 'ap/vim-css-color'
  use 'turbio/bracey.vim'

-- Marks & Registers
--  use 'gennaro-tedesco/nvim-peekup'
  use 'kshenoy/vim-signature'

-- ColorScheme Plugins
  use 'vim-scripts/ScrollColors'
  use 'tjdevries/colorbuddy.nvim'
  use 'bkegley/gloombuddy'
  use 'wadackel/vim-dogrun'
  use 'smithwebdev/birds-of-paradise.vim'
  use 'sfi0zy/atlantic-dark.vim'
  use 'cseelus/vim-colors-lucid'
  use 'chmllr/elrodeo-vim-colorscheme'
  use 'djjcast/mirodark'
  use 'yuttie/hydrangea-vim'
  use 'kristijanhusak/vim-hybrid-material'
  use 'bignimbus/pop-punk.vim'
  use 'rafi/awesome-vim-colorschemes'
  use 'rktjmp/lush.nvim'


-- Ruby Plugins
  use 'joshcheek/seeing_is_believing'

-- General Plugins
  use 'andymass/vim-matchup'
  use 'alvan/vim-closetag'
  use 'tpope/vim-surround'
  use 'easymotion/vim-easymotion'
  use 'junegunn/vim-easy-align'
--  use 'kevinhwang91/nvim-bqf'
--  use 'unblevable/quick-scope'
--  use 'airblade/vim-rooter'
--  use 'kevinhwang91/rnvimr'
  use 'mhinz/vim-startify'
--  use 'metakirby5/codi.vim'
  use 'psliwka/vim-smoothie'
  use 'sunjon/shade.nvim'
  use 'kdav5758/TrueZen.nvim'
--  use 'moll/vim-bbye'
  use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
  use 'camspiers/animate.vim'
  use 'camspiers/lens.vim'
  use 'liuchengxu/vim-which-key'
  use 'acksld/nvim-whichkey-setup.lua'
--  use 'voldikss/vim-floaterm'
--  use 'liuchengxu/vista.vim'
--  use 'terrortylor/nvim-comment'
--  use 'bfredl/nvim-miniyank'
  --use 'junegunn/goyo.vim'
--  use 'phaazon/hop.nvim'
  use 'tpope/vim-sleuth'

end)

require 'smithwebdev.plugins.config'.setup()
