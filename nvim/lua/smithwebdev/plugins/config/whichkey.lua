vim.g.which_key_dict={','}

local wk = require('whichkey_setup')
local keymap = {
  ['<leader>'] = {
    name = '+extended_options',
    b = {
      name = '+Bracey',
      b = {'<cmd>Bracey<cr>',                                   'start Bracey server'},
      r = {'<cmd>BraceyReload<cr>',                             'reload Bracey server'},
      s = {'<cmd>BraceyStop<cr>',                               'stop Bracey server'},
    },
    c = {
      name = '+edit outside vim configs',
      j = {'<cmd>e ~/.jsbeautifyrc<cr>',                        'edit JS Beautify config'},
      r = {'<cmd>e ~/.rifle.conf<cr>',                          'edit ranger config'},
      t = {'<cmd>e ~/.tmux.conf<cr>',                           'edit tmux config'},
      z = {'<cmd>e ~/.zshrc<cr>',                               'edit zshrc'}
    },
    g = {'<cmd>Goyo<cr>',                                       'toggle Goyo'},
    p = {
      name ='+Packer',
      c = {'<cmd>PackerClean<cr>',                                'PackerClean'},
      i = {'<cmd>PackerInstall<cr>',                              'PackerInstall'},
      s = {'<cmd>PackerSync<cr>',                                 'PackerSync'},
      u = {'<cmd>PackerUpdate<cr>',                               'PackerUpdate'},
    },
    S = {
      name = '+spectre',
      f = {[[viw:lua require('spectre').open_file_search()<cr>]], 'search in current file'},
      o = {[[:lua require('spectre').open()<cr>]],                'open spectre'},
      w = {[[viw:lua require('spectre').open_visual()<cr>]],      'search current word'}
    },
    s = {
      name = '+Seeing Is Believing',
      b = {':%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<cr>',                                       'Annotate every line'},
      c = {'%.!seeing_is_believing --clean<cr>',                 'Remove Annotations'},
      n = {':%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<cr>',                     'Annotat marked lines'}
    },
    t = {
      name = '+Todo',
      f = {'<cmd>TodoTelescope<cr>',                              'Search Todo in Telescope'},
      q = {'<cmd>TodoQuickFix<cr>',                               'Open Todo in QuickFix Window'},
      t = {'<cmd>TodoTrouble<cr>',                                'Open Trouble'},
    },
    U = {
      name = '+UltiSnips',
      o = {'<cmd>UltiSnipsEdit<cr>',                            'Edit Snippet' },
      s = {'<cmd>Snippets<cr>',                                 'Show Available Snippets'}
    },
    u = {'<cmd>Ultest<cr>',                                     'Run all test current file'},
    w = {':e $WT',                                              'edit windows terminal config'}
  },
  b = {
    name = '+buffers',
    b = {':buffers<cr>',                                        'show open buffers'},
    c = {':BufferClose<cr>',                                    'Close Buffer'},
    d = {':bdelete<cr>',                                        'delete buffer'},
    h = {':bfirst<cr>',                                         'first buffer'},
    j = {':bnext<cr>',                                          'next buffer'},
    k = {':bprevious<cr>',                                      'previous buffer'},
    l = {':blast<cr>',                                          'last buffer'},
    n = {
      name = '+buffer #',
      ['1'] = {':BufferGoto 1<cr>',                             'Goto Buffer 1'},
      ['2'] = {':BufferGoto 2<cr>',                             'Goto Buffer 2'},
      ['3'] = {':BufferGoto 3<cr>',                             'Goto Buffer 3'},
      ['4'] = {':BufferGoto 4<cr>',                             'Goto Buffer 4'},
      ['5'] = {':BufferGoto 5<cr>',                             'Goto Buffer 5'},
      ['6'] = {':BufferGoto 6<cr>',                             'Goto Buffer 6'},
      ['7'] = {':BufferGoto 7<cr>',                             'Goto Buffer 7'},
      ['8'] = {':BufferGoto 8<cr>',                             'Goto Buffer 8'},
      ['9'] = {':BufferGoto 9<cr>',                             'Goto Buffer 9'},
    },
    r = {'<C-W>r',                                              'move down/right'},
    R = {'<C-W>R',                                              'move up/left'},
    s = {
      name = '+sort',
      d = {':BufferOrderByDirectory',                           'Sort by Directory'},
      l = {':BufferOrderByLanguage',                            'Sort by Language'}
    },
  },
  c = {
    name ='+Commands',
    d = {':!mkdir ', 'make directory'},
    m = {':!mv ',  'move files'},
    t = {':!touch ',                                            'create file'},
    r = {':!ruby ',                                             'Run Ruby Command'},
    y = {':!yarn add ',                                         'Yarn add..'}
  },
  C = {
    name= '+Ctags',
    a = {':ta '}
    },
  e = {
    name = '+NvimTree',
    e = {'<cmd>NvimTreeToggle<cr>',                             'toggle NvimTree'},
    f = {'<cmd>NvimTreeFindFile<cr>',                           'NvimTreeFindFile'}
  },
  f = {
    name = '+find',
    b = {'<cmd>Telescope buffers<cr>',                          'buffers'},
    c = {
      name = '+commands',
      c = {'<cmd>Telescope commands<cr>',                       'commands'},
      h = {'<cmd>Telescope command_history<cr>',                'history'},
      q = {'<cmd>Telescope quickfix<cr>',                       'quickfix'},
    },
    f = {'<cmd>Telescope find_files<cr>',                       'find files'},
    g = {
      name = '+git',
      g = {'<cmd>Telescope git_commits<cr>',                    'commits'},
      c = {'<cmd>Telescope git_bcommits<cr>',                   'bcommits'},
      b = {'<cmd>Telescope git_branches<cr>',                   'branches'},
      s = {'<cmd>Telescope git_jkjstatus<cr>',                     'status'},
    },
    h = {'<cmd>Telescope help_tags<cr>',                        'help tags'},
    r = {'<cmd>Telescope registers<cr>',                        'find register'},
    t = {'<cmd>Telescope tags<cr>',                             'find tags'},
    T = {'<cmd>Telescope treesitter<cr>',                       'find treesitter'},
    u = {'<cmd>Telescope ultisnips ultisnips<cr>',              'find snippets'}
  },
  l = {
    name = '+LSP',
    a = {'<cmd>Lspsaga code_action<CR>',                      'lsp code action'},
    c = {'Lspsaga show_cursor_diagnostics','show_cursor_diagnostics'},
    d = {'<cmd>lua vim.lsp.buf.definition()<CR>',             'go to definition'},
    D = {'<cmd>lua vim.lsp.buf.declaration()<CR>',            'go to declaration'},
    e = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>',     'set location list'},
    f = {'<cmd>Lspsaga lsp_finder<CR>',                       'Lsp Finder'},
    h = {'<cmd>Lspsaga signature_help<CR>',                   'Show Signature Help'},
    i = {'Lspsaga implement','implement'},
    j = {'<cmd>Lspsaga diagnostic_jump_next<CR>','diagnostic_jump_next'},
    k = {'<cmd>Lspsaga diagnostic_jump_prev<CR>','diagnostic_jump_prev'},
    K = {'<cmd>Lspsaga hover_doc<CR>',                        'Doc on hover'},
    m = {'<cmd>lua vim.lsp.buf.formatting()<CR>',             'lsp formatting'},
    p = {
      name = '+preview',
      d = {'<cmd>Lspsaga preview_definition<CR>',               'Preview Definition'},
      D = {'<cmd>lua require(\'goto-preview\').goto_preview_definition()<CR>'},
      i = {'<cmd>lua require(\'goto-preview\').goto_preview_implementation()<CR>'},
      p = {'<cmd>lua require(\'goto-preview\').close_all_win()<CR>'}
    },
    r = {'<cmd>Lspsaga rename<CR>',                           'Rename'},
    s = {'<cmd>Lspsaga show_line_diagnostics<CR>',            'Show line diagnostic'},
  },
  m = {
    name = '+markdown',
    m = {':MarkdownPreviewToggle<cr>',                          'Toggle Markdown Preview'},
    o = {':MarkdownPreview<cr>',                                'Open Markdown Preview'},
    s = {':MarkdownPreviewStop<cr>',                            'Stop Markdown Preview'}
  },
  n = {
    name = '+neoformat',
    },
--  p = {
--    name ='+Packer',
--    c = {'<cmd>PackerClean<cr>',                                'PackerClean'},
--    i = {'<cmd>PackerInstall<cr>',                              'PackerInstall'},
--    s = {'<cmd>PackerSync<cr>',                                 'PackerSync'},
--    u = {'<cmd>PackerUpdate<cr>',                               'PackerUpdate'},
--  },
  r = {
    name = '+ruby/rails',
    a = {
      name = '+alternate',
      e = {'<cmd>AE<cr>',                                       'edit alternate file'},
      s = {'<cmd>AS<cr>',                                       'edit alternate in h split'},
      t = {'<cmd>AT<cr>',                                       'edit alternate in tab'},
      v = {'<cmd>AV<cr>',                                       'edit alternate in v split'},
    },
    b = {':!bundle install<cr>', 'Bundle Install'},
    d = {'<cmd>Destroy',  'Rails Destroy'},
    g = {'<cmd>Generate ',  'Rails Generate'},

    r = {
      name = '+relative',
      e = {'<cmd>RE<cr>',                                       'edit relative file'},
      s = {'<cmd>RS<cr>',                                       'edit relative in h split'},
      t = {'<cmd>RT<cr>',                                       'edit relative in tab'},
      v = {'<cmd>RV<cr>',                                       'edit relative in v split'},
    },
  },
  s = {
    name = '+Scope',
  },
  t = {
    name = '+tabs',
    ['='] = {':-tabm<cr>',                                      'move tab left'},
    ['-'] = {':+tabm<cr>',                                      'move tab right'},
    c = {':tabc<cr>',                                           'tab close'},
    e = {':tabedit %<cr>',                                      'tab edit current file'},
    h = {':tabfirst<cr>',                                       'first tab'},
    i = {':tabnew $MYVIMRC<cr>',                                'open init in tab'},
    l = {':tablast<cr>',                                        'last tab'},
    m = {':tabnew $VIMM<cr>',                                   'open keymap in tab'},
    n = {':tabnew<space>',                                      'open new tab'},
    p = {':tabnew $VIMP<cr>',                                   ' open plugin file'},
    s = {':tabnew $VIMS<cr>',                                   'open settings file'},
    t = {':tabs<cr>',                                           'show open tabs'},
    u = {':tabnew $VIMU<cr>',                                   'open utils file'},
    w = {':tabnew $VIME/whichkey.lua<cr>', },
    x = {':tabnew $VIME/',                                      'open config file'}
  },
  u = {
    name = '+ultest',
    a = {'<cmd>UltestAttach<cr>',                               'Attach (Debugging live)'},
    j = {'<cmd>UltestNearest<cr>',                              'Run nearest test current file'},
    s = {'<cmd>UltestSummary<cr>',                              'Toggle summary window'},
    x = {'<cmd>UltestStop<cr>',                                 'Stop running tests'}
  },
  v = {
    name = '+vim',
    a = {'<cmd>e $VIMA<cr>',                                    'autocmds config'},
    c = {'<cmd>e $VIMC<cr>',                                    'plugins config'},
    e = {':e $VIME/',                                           'select plugin config'},
    j = {'<cmd>so %<cr>',                                       'refresh source'},
    l = {'<cmd>e $VIML<cr>',                                    'LSP init'},
    m = {'<cmd>e $VIMM<cr>',                                    'keymaps config'},
    o = {'<cmd>e $MYVIMRC<cr>',                                 'edit init'},
    p = {'<cmd>e $VIMP<cr>',                                    'plugin list'},
    s = {'<cmd>e $VIMS<cr>',                                    'settings config'},
    w = {'<cmd>e $VIME/whichkey.lua<cr>',                       'whichkey config'},
    u = {'<cmd>e $VIMU<cr>',                                    'utility config'},
    v = {'<cmd>source $MYVIMRC<cr>',                            'luafile init config'},
  }
}
local visual_keymap = {
  j = {':move \'>+1<CR>gv-gv',                                  'move line down'},
  k = {':move \'<-2<CR>gv-gv',                                  'move line up'},
  r = {
    name = '+rails',
    e = {":Extract ",                                           'Extracts range to Partial, Helper, Concern'}
  },
}
wk.register_keymap('leader',                                    keymap)
wk.register_keymap('leader',                                    visual_keymap, {mode = 'v'})
