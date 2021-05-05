local M = {}

function M.init()
  require 'smithwebdev.plugins.config.bracey'
  require 'smithwebdev.plugins.config.closetag'
  require 'smithwebdev.plugins.config.easymotion'
  require 'smithwebdev.plugins.config.lens'
  require 'smithwebdev.plugins.config.markdown'
  require 'smithwebdev.plugins.config.nvim-tree'
  require 'smithwebdev.plugins.config.ultisnips'
  require 'smithwebdev.plugins.config.vsnip'
end


function  M.setup()
  require 'smithwebdev.plugins.config.compe'
  require 'smithwebdev.plugins.config.colorizer'
  require 'smithwebdev.plugins.config.emmet'
  require 'smithwebdev.plugins.config.gitworktree'
  require 'smithwebdev.plugins.config.lsp'
  require 'smithwebdev.plugins.config.spectre'
  require 'smithwebdev.plugins.config.telescope'
  require 'smithwebdev.plugins.config.treesitter'
  require 'smithwebdev.plugins.config.whichkeysetup'
  require 'smithwebdev.plugins.config.whichkey'
end

return M
