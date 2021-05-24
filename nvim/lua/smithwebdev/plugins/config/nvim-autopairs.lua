local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

_G.MUtils = {}

vim.g.completion_confirm_key = ''
MUtils.completion_confirm=function()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info()['selected'] ~= -1 then
      return vim.fn['compe#confirm'](npairs.esc('jk'))
    else
      return npairs.esc('jk')
    end
  else
    return npairs.autopairs_cr()
  end
end

remap('i', 'jk', 'v:lua.MUtils.completion_confirm()', {expr = true, noremap= true})

require('nvim-autopairs').setup()
