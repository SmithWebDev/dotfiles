require'lexima'.setup()
vim.g.lexima_no_default_rules = true


local utils = require'smithwebdev.start.utils'
utils.keymap('i','<CR>','compe#comfirm(lexima#expand('<LT>CR>','i'))')
