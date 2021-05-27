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
  use 'hrsh7th/nvim-compe'
  use 'mattn/emmet-vim'
  --use 'rstacruz/vim-hyperstyle'
  use 'roxma/nvim-yarp'
  use 'roxma/vim-hug-neovim-rpc'
--  use 'windwp/nvim-autopairs'
  use 'jiangmiao/auto-pairs'

-- Explorer
  use 'kyazdani42/nvim-tree.lua'

-- Snippets
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
--  use 'hrsh7th/vim-vsnip'
--  use 'hrsh7th/vim-vsnip-integ'
--  use 'rafamadriz/friendly-snippets'
--
-- LSP
  use 'creativenull/diagnosticls-nvim'
  use 'folke/lsp-trouble.nvim'
  use 'folke/lsp-colors.nvim'
  use 'glepnir/lspsaga.nvim'
  --use 'kabouzeid/nvim-lspinstall'
--  use 'kosayoda/nvim-lightbulb'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/lsp-status.nvim'
  use 'onsails/lspkind-nvim'
  use 'williamboman/nvim-lsp-installer'

-- Filetype
  use 'tpope/vim-endwise'
  use 'tpope/vim-rails'
  use 'tpope/vim-haml'
  use 'vim-pandoc/vim-pandoc'
  use 'vim-pandoc/vim-pandoc-syntax'
  use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
  --use 'kkoomen/vim-doge'
  use 'sbdchd/neoformat'
  use 'Rishabhrd/popfix'
  use 'Rishabhrd/nvim-cheat.sh'

-- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'sheerun/vim-polyglot'
  use 'nvim-treesitter/playground'
  use 'romgrk/nvim-treesitter-context'

-- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

-- Status Line and Bufferline
  use 'hoob3rt/lualine.nvim'
--  use 'glepnir/galaxyline.nvim'
--  use 'romgrk/barbar.nvim'

-- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'fhill2/telescope-ultisnips.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'windwp/nvim-spectre'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-telescope/telescope-frecency.nvim'

-- Git
  use 'ThePrimeagen/git-worktree.nvim'
--  use 'TimUntersberger/neogit'
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
--  use 'f-person/git-blame.nvim'
  use 'tanvirtin/vgit.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

-- Easily Create Gists
--  use 'mattn/vim-gist'
--  use 'mattn/webapi-vim'

-- Testing
  use 'rcarriga/vim-ultest'
  use 'vim-test/vim-test'
  use 'thoughtbot/vim-rspec'

-- Webdev
  use 'windwp/nvim-ts-autotag'
--  use 'gennaro-tedesco/nvim-jqx'
  use 'andrewradev/tagalong.vim'
  use 'norcalli/nvim-colorizer.lua'
  use 'turbio/bracey.vim'


-- Tmux 
  use 'christoomey/vim-tmux-navigator'

-- Marks & Registers
--  use 'gennaro-tedesco/nvim-peekup'
  use 'folke/todo-comments.nvim'
  use 'kshenoy/vim-signature'
  use 'MattesGroeger/vim-bookmarks'

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
  use 'shaunsingh/moonlight.nvim'
  use 'marko-cerovac/material.nvim'

-- Ruby Plugins
  use 'joshcheek/seeing_is_believing'

-- Node Plugins
  use'moll/vim-node'

-- General Plugins
  use 'yggdroot/indentline'
  use 'kevinhwang91/nvim-hlslens'
  use 'lukas-reineke/indent-blankline.nvim'
  --use 'wellle/context.vim'
  use 'andymass/vim-matchup'
  use 'alvan/vim-closetag'
  use 'tpope/vim-surround'
  use 'tpope/vim-ragtag'
  use 'easymotion/vim-easymotion'
  use 'junegunn/vim-easy-align'
--  use 'kevinhwang91/nvim-bqf'
--  use 'unblevable/quick-scope'
--  use 'airblade/vim-rooter'
  use 'kevinhwang91/rnvimr'
  use 'mhinz/vim-startify'
--  use 'metakirby5/codi.vim'
  use 'psliwka/vim-smoothie'
  use 'sunjon/shade.nvim'
  use 'kdav5758/TrueZen.nvim'
--  use 'moll/vim-bbye'
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
  use 'tpope/vim-abolish'
  use 'tpope/vim-repeat'
  use 'tpope/vim-rvm'
  use 'tpope/vim-jdaddy'
  --use 'chaoren/vim-wordmotion'
  use 'justinmk/vim-sneak'
  use 'tpope/vim-sleuth'
  --use 'kdav5758/NoCLC.nvim'
  use 'wakatime/vim-wakatime'
  use 'itchyny/calendar.vim'
  --use 'mattn/calendar-vim'
  use 'NTBBloodbath/rest.nvim'
  use 'yoshio15/vim-trello'
  use 'terrortylor/nvim-comment'
end)

require 'smithwebdev.plugins.config'.setup()
