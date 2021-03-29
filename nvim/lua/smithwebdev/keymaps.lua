local utils = require 'smithwebdev.utils'
-- -------------------------------------

-- Map Leader
-- -------------------------------------
vim.g.mapleader = ' '


-- Buffer maps
-- -------------------------------------
utils.keymap('n', '<leader>ba', '<cmd>buffers<CR>')
utils.keymap('n', '<leader>bn', '<cmd>enew<CR>')
utils.keymap('n', '<leader>bl',      '<cmd>bnext<CR>')
utils.keymap('n', '<leader>bh',      '<cmd>bprevious<CR>')

-- Easy Esc
-- -------------------------------------
utils.keymap('i', 'jj', '<Esc>')
utils.keymap('i', 'jk', '<Esc>')
utils.keymap('i', 'kj', '<Esc>')

-- **Packer 
-- -------------------------------------
utils.keymap('n', '<leader>Pc', ':PackerClean<CR>' )
utils.keymap('n', '<leader>Pi', ':PackerInstall<CR>' )
utils.keymap('n', '<leader>Ps', ':PackerSync<CR>' )
utils.keymap('n', '<leader>Pu', ':PackerUpdate<CR>' )

-- Resize window panes
-- -------------------------------------
utils.keymap('n', '<up>', ':resize +2<CR>')
utils.keymap('n', '<down>', ':resize -2<CR>')
utils.keymap('n', '<left>', ':vertical resize +2<CR>')
utils.keymap('n', '<right>', ':vertical resize -2<CR>')

-- tabs
-- -------------------------------------
utils.keymap('n', '<leader>t=', ':-tabm<CR>')
utils.keymap('n', '<leader>t-', ':+tabm<CR>')
utils.keymap('n', '<leader>tc', ':tabc<CR>')
utils.keymap('n', '<leader>te', ':tabedit %<CR>')
utils.keymap('n', '<leader>th', ':tabfirst<CR>')
utils.keymap('n', '<leader>ti', ':tabnew $VIMI<CR>')
utils.keymap('n', '<leader>tj', ':tabnext<CR>')
utils.keymap('n', '<leader>tk', ':tabprev<CR>')
utils.keymap('n', '<leader>tl', ':tablast<CR>')
utils.keymap('n', '<leader>tm', ':tabnew $VIMM<CR>')
utils.keymap('n', '<leader>tn', ':tabnew<Space>')
utils.keymap('n', '<leader>tp', ':tabnew $VIMP<CR>')
utils.keymap('n', '<leader>ts', ':tabnew $VIMS<CR>')
utils.keymap('n', '<leader>tt', ':tabs<CR>')
utils.keymap('n', '<leader>tu', ':tabnew $VIMU<CR>')
utils.keymap('n', '<leader>tx', ':tabnew $VIMC')

-- Tabs
-- -------------------------------------
utils.keymap('n', '<M-j>', [[mz:m+<CR>`z]])


-- Window Navigation
-- -------------------------------------
utils.keymap('n', '<C-h>', '<C-w>h')
utils.keymap('n', '<C-j>', '<C-w>j')
utils.keymap('n', '<C-k>', '<C-w>k')
utils.keymap('n', '<C-l>', '<C-w>l')
utils.keymap('n', '<C-d>', '<C-w>_<C-w>|')
utils.keymap('n', '=', '<C-w>=')
utils.keymap('n', '<leader>|', '<C-w>|')
utils.keymap('n', '<leader>_', '<C-w>_')
utils.keymap('n', '<leader>\\', '<C-w>v')
utils.keymap('n', '<leader>-', '<C-w>s')
utils.keymap('n', '<leader>q', '<C-w>q')

-- VIM commands
-- -------------------------------------
utils.keymap('n', '<leader>va', ':e $VIMA<CR>')
utils.keymap('n', '<leader>vc', ':e $VIMC<CR>')
utils.keymap('n', '<leader>vi', ':luafile $MYVIMRC<CR>')
utils.keymap('n', '<leader>vm', ':e $VIMM<CR>')
utils.keymap('n', '<leader>vp', ':e $VIMP<CR>')
utils.keymap('n', '<leader>vr', ':luafile %<CR>')


