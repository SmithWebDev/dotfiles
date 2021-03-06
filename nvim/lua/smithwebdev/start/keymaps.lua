local utils = require 'smithwebdev.start.utils'
-- -------------------------------------

-- Map Leader
-- -------------------------------------
vim.g.mapleader = ' '

utils.keymap('n', '<C-g>', [[<Cmd>lua require('material.functions').toggle_style()<CR>]])
-- Buffer maps
-- -------------------------------------
--utils.keymap('n', '<leader>ba', '<cmd>buffers<CR>')
--utils.keymap('n', '<leader>bd', '<cmd>bdelete<CR>')
--utils.keymap('n', '<leader>bn', '<cmd>enew<CR>')
--utils.keymap('n', '<TAB>', '<cmd>bnext<CR>')
--utils.keymap('n', '<S-TAB>', '<cmd>bprevious<CR>')

-- Disable highlights
utils.keymap('n', '<leader><CR>', '<cmd>noh<CR>')

-- Easy Esc
-- -------------------------------------
utils.keymap('i', 'jj', '<Esc>')

-- Resize window panes
-- -------------------------------------
utils.keymap('n', '<up>', ':resize +2<CR>')
utils.keymap('n', '<down>', ':resize -2<CR>')
utils.keymap('n', '<left>', ':vertical resize +2<CR>')
utils.keymap('n', '<right>', ':vertical resize -2<CR>')

utils.keymap('n', 'H', '0')
utils.keymap('n', 'L', '$')

-- tabs
-- -------------------------------------
--utils.keymap('n', '<leader>t=', ':-tabm<CR>')
--utils.keymap('n', '<leader>t-', ':+tabm<CR>')
--utils.keymap('n', '<leader>tc', ':tabc<CR>')
--utils.keymap('n', '<leader>te', ':tabedit %<CR>')
--utils.keymap('n', '<leader>th', ':tabfirst<CR>')
--utils.keymap('n', '<leader>ti', ':tabnew $VIMI<CR>')
utils.keymap('n', '<Tab>', ':tabnext<CR>')
utils.keymap('n', '<S-Tab>', ':tabprev<CR>')
--utils.keymap('n', '<leader>tl', ':tablast<CR>')
--utils.keymap('n', '<leader>tm', ':tabnew $VIMM<CR>')
--utils.keymap('n', '<leader>tn', ':tabnew<Space>')
--utils.keymap('n', '<leader>tp', ':tabnew $VIMP<CR>')
--utils.keymap('n', '<leader>ts', ':tabnew $VIMS<CR>')
--utils.keymap('n', '<leader>tt', ':tabs<CR>')
--utils.keymap('n', '<leader>tu', ':tabnew $VIMU<CR>')
--utils.keymap('n', '<leader>tx', ':tabnew $VIMC')

--
-- -------------------------------------
--utils.keymap('n', '<M-j>', [[mz:m+<CR>`z]])

--Selection Remaps
-- -------------------------------------
utils.keymap('i', '<C-j>', '<C-n>')
utils.keymap('i', '<C-k>', '<C-p>')


-- Window Navigation
-- -------------------------------------
utils.keymap('n', '<C-h>', '<C-w>h')
utils.keymap('n', '<C-j>', '<C-w>j')
utils.keymap('n', '<C-k>', '<C-w>k')
utils.keymap('n', '<C-l>', '<C-w>l')


utils.keymap('n', 'M', '<C-w>_<C-w>|')
utils.keymap('n', '<leader>=', '<C-w>=')
utils.keymap('n', '<leader>|', '<C-w>|')
utils.keymap('n', '<leader>_', '<C-w>_')
utils.keymap('n', '<leader>\\', '<C-w>v')
utils.keymap('n', '<leader>-', '<C-w>s')
utils.keymap('n', '<leader>q', '<C-w>q')
utils.keymap('n', '<leader>Q', '<cmd>qa!<cr>')

-- VIM commands
-- -------------------------------------
--utils.keymap('n', '<leader>va', ':e $VIMA<CR>')
--utils.keymap('n', '<leader>vc', ':e $VIMC<CR>')
--utils.keymap('n', '<leader>vi', ':luafile $MYVIMRC<CR>')
--utils.keymap('n', '<leader>vj', ':so %')
--utils.keymap('n', '<leader>vm', ':e $VIMM<CR>')
--utils.keymap('n', '<leader>vp', ':e $VIMP<CR>')
--utils.keymap('n', '<leader>vr', ':luafile %<CR>')
--utils.keymap('n', '<leader>vs', ':e $VIMS<CR>')
--utils.keymap('n', '<leader>vv', ':e $MYVIMRC<CR>')

-- Plugin Commands
-- =====================================

-- Compe Completion
-- -------------------------------------
--utils.keymap('i', 'jk', 'compe#confirm("<CR>")')

-- **Nvim-Tree
-- -------------------------------------
--utils.keymap('n', '<leader>ee', ':NvimTreeToggle<CR>')
--utils.keymap('n', '<leader>ef', ':NvimTreeFindFile<CR>')

-- **Packer 
-- -------------------------------------
--utils.keymap('n', '<leader>Pc', ':PackerClean<CR>' )
--utils.keymap('n', '<leader>Pi', ':PackerInstall<CR>' )
--utils.keymap('n', '<leader>Ps', ':PackerSync<CR>' )
--utils.keymap('n', '<leader>Pu', ':PackerUpdate<CR>' )

-- **Telescope 
-- -------------------------------------
--utils.keymap('n', '<leader>ff', [[<cmd>lua require'smithwebdev.plugins.config.telescope'.find_files()<CR>]])
--utils.keymap('n', '<leader>fg', [[<cmd>lua require'smithwebdev.plugins.config.telescope'.live_grep()<CR>]])

-- **WhichKey 
-- -------------------------------------
--utils.keymap('n', '<leader>', [[<cmd>WhichKey '<Space>'<CR>]])
utils.keymap('n', ',', [[<cmd>WhichKey ','<CR>]])
print('Keymaps connected')
