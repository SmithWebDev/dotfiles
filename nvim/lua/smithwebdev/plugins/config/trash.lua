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
      S = {'<cmd>Lspsaga show_line_diagnostics<CR>',            'Show line diagnostic'},
    }


{'Lspsaga range_code_action','range_code_action'},
{'Lspsaga open_floaterm','open_floaterm'},
{'Lspsaga close_floaterm','close_floaterm'},


--nnoremap gpd
--nnoremap gpi
--nnoremap gP








-- Mappings.
--  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
--  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
--  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
--  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
