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

  --Completion
  --===============
  use 'hrsh7th/nvim-compe'
  use 'mattn/emmet-vim'
  use 'windwp/nvim-autopairs'

  --Cosmetic Upgrades
  --=================
  use 'bkegley/gloombuddy'
  use 'camspiers/animate.vim'
  use 'camspiers/lens.vim'
  use 'folke/tokyonight.nvim'
  use 'hoob3rt/lualine.nvim'
  --use 'kdav5758/NoCLC.nvim'
  use 'kevinhwang91/nvim-hlslens'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'psliwka/vim-smoothie'
  use 'shaunsingh/moonlight.nvim'
  use 'sunjon/shade.nvim'
  use 'tjdevries/colorbuddy.nvim'
  use 'vim-scripts/ScrollColors'
  use 'yggdroot/indentline'

  --Debugging
  --===================
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'

  --Editor Improvements
  --===================
  use 'junegunn/vim-easy-align'
  use 'tpope/vim-surround'

  --File Explorer
  --===============
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'rmagatti/goto-preview'
  use 'pechorin/any-jump.vim'

-- Status Line and Bufferline
  use 'glepnir/galaxyline.nvim'
  --use 'romgrk/barbar.nvim'

  --File Type Plugins
  --=================
  use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
  use 'joshcheek/seeing_is_believing'
  use 'Rishabhrd/popfix'
  use 'Rishabhrd/nvim-cheat.sh'
  use 'tpope/vim-endwise'
  use 'tpope/vim-rails'
  use 'tpope/vim-haml'
  use 'vim-pandoc/vim-pandoc'
  use 'vim-pandoc/vim-pandoc-syntax'

  --Git Plugins
  --=================
  use 'sindrets/diffview.nvim'
  use 'lambdalisue/gina.vim'
  use 'tanvirtin/vgit.nvim'

  --Key Binds
  --===============
  use 'liuchengxu/vim-which-key'
  use 'acksld/nvim-whichkey-setup.lua'

  --LSP
  --=================
--  use 'creativenull/diagnosticls-nvim'
--  use 'folke/lsp-trouble.nvim'
--  use 'folke/lsp-colors.nvim'
  use 'glepnir/lspsaga.nvim'
  use 'kabouzeid/nvim-lspinstall'
  use 'kosayoda/nvim-lightbulb'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/lsp-status.nvim'
  use 'onsails/lspkind-nvim'
  use 'ray-x/lsp_signature.nvim'

  -- Marks & Registers
  --=================
  use 'gennaro-tedesco/nvim-peekup'
  use 'folke/todo-comments.nvim'
  use 'kshenoy/vim-signature'

  --Snippets
  --=================
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'

  --Telescope
  --=================
  use 'fhill2/telescope-ultisnips.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-frecency.nvim'
  use 'tami5/sql.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'windwp/nvim-spectre'


  --Testing
  --=================
  use { 'rcarriga/vim-ultest', requires = {'vim-test/vim-test'}, run = ':UpdateRemotePlugins' }
  --use 'thoughtbot/vim-rspec'

  --Treesitter
  --=================
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-treesitter/playground'
  use 'sheerun/vim-polyglot'
end)


require 'smithwebdev.plugins.config'.setup()
print('Plugins Loaded')
