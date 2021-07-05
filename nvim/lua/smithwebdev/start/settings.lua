-- =============================================================================
-- Standard Settings Helper --
-- =============================================================================
local o=vim.o
local w=vim.wo
local command=vim.api.nvim_command
-- =============================================================================
print('Settings connected')
vim.cmd 'syntax on'

-- Completion Options --
o.completeopt='longest,menuone,noinsert,noselect'
o.shortmess=o.shortmess .. 'c'
--o.updatetime=2000
o.timeoutlen=500

-- Fold Options --
w.foldmethod='indent'
w.foldnestmax=3
w.foldenable=false
w.foldlevel=99

-- Indentation Options --
o.expandtab=true
o.tabstop=2
o.shiftwidth=0
o.smartindent=true
o.autoindent=true
o.smarttab=true
o.softtabstop=2

-- Line Options --
o.textwidth=80
o.listchars='space:·,tab:→ ,trail:·,extends:…,eol:↩'
o.showbreak='+++'
o.scrolloff=999
o.sidescrolloff=15
w.list=true
o.showmode= false
o.showtabline = 2

-- Search Options --
o.ignorecase=true
o.smartcase=true
o.wrapscan=true

-- File --
o.swapfile=false
o.autowrite=true
o.autowriteall=true
o.mouse='a'
o.termguicolors=true
--o.t_Co='256'
o.undodir=vim.fn.stdpath('cache')..'/undodir'
o.undofile=true

-- Line Numbering --
w.number=true
w.relativenumber=true

-- Window/Buffer/Tab Options --
o.hidden=true
o.cmdheight=1
o.guifont='FiraCode'
o.pumheight=10
o.pumblend=25
o.splitbelow=true
o.splitright=true
o.backup=false
o.writebackup=false
o.clipboard='unnamedplus'

o.completefunc='emoji#complete'
command'set tags+=gems.tags'
