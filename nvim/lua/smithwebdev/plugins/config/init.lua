local M = {}

function M.init()
--  require 'smithwebdev.plugins.config.api'
--  require 'smithwebdev.plugins.config.bookmarks'
--  require 'smithwebdev.plugins.config.bracey'
--  require 'smithwebdev.plugins.config.calendar'
  require 'smithwebdev.plugins.config.cheatsh'
--  require 'smithwebdev.plugins.config.closetag'
--  require 'smithwebdev.plugins.config.easymotion'
  require 'smithwebdev.plugins.config.lens'
--  require 'smithwebdev.plugins.config.instantmarkdown'
  require 'smithwebdev.plugins.config.markdown-preview'
  --require 'smithwebdev.plugins.config.material'
  require 'smithwebdev.plugins.config.nvim-tree'
  require 'smithwebdev.plugins.config.surround'
  require 'smithwebdev.plugins.config.ultisnips'
--  require 'smithwebdev.plugins.config.vsnip'
end


function  M.setup()
  require 'smithwebdev.plugins.config.nvim-autopairs'
--  require 'smithwebdev.plugins.config.autopairs'
--  require 'smithwebdev.plugins.config.colorizer'
--  require 'smithwebdev.plugins.config.comment'
  require 'smithwebdev.plugins.config.compe'
  require 'smithwebdev.plugins.config.emmet'
--  require 'smithwebdev.plugins.config.gitworktree'
  require 'smithwebdev.plugins.config.lsp'
  --require 'smithwebdev.plugins.config.clc'
  --require 'smithwebdev.plugins.config.shade'
  require 'smithwebdev.plugins.config.spectre'
  require 'smithwebdev.plugins.config.statusline'
  require 'smithwebdev.plugins.config.tokyonight'
  require 'smithwebdev.plugins.config.telescope'
--  require 'smithwebdev.plugins.config.todo'
--  require 'smithwebdev.plugins.config.treesitter'
  require 'smithwebdev.plugins.config.whichkeysetup'
  require 'smithwebdev.plugins.config.whichkey'
end

return M
