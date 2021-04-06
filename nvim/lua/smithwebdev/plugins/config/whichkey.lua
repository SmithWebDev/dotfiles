local wk = require('whichkey_setup')
local keymap = {
        ['<leader>'] = { 
                name = '+extended options',
                B = {
                        name = '+Bracey',
                        b = {'<cmd>Bracey<cr>', 'start Bracey server'},
                        r = {'<cmd>BraceyReload<cr>', 'reload Bracey server'},
                        s = {'<cmd>BraceyStop<cr>', 'stop Bracey server'},
                },
                s = {
                        name = '+Snippets',
                        e = {'<cmd>VsnipOpenEdit<cr>', 'Edit Snippets'},
                        o = {'<cmd>VsnipOpen<cr>', 'Open Snippets'},
                        s = {'<cmd>VsnipOpenSplit<cr>', 'Open Snippet split'},
                        v = {'<cmd>VsnipOpenVSplit<cr>', 'Open Snippets vsplit'},
                        y = {'<cmd>VsnipYank | VsnipOpen | p<cr>', 'Open Snippets vsplit'},
                },
                t = {':tabs<cr>', 'show open tabs'},
                u = {'<cmd>Ultest<cr>', 'Run all test current file'},
        },
        b = { name = '+buffers' },
        e = {
                name = '+NvimTree',
                e = {'<cmd>NvimTreeToggle<cr>', 'toggle NvimTree'},
                f = {'<cmd>NvimTreeFindFile<cr>', 'NvimTreeFindFile'}
        },
        f = {
                name = '+find',
                b = {'<cmd>Telescope buffers<cr>', 'buffers'},
                c = {
                        name = '+commands',
                        c = {'<cmd>Telescope commands<cr>', 'commands'},
                        h = {'<cmd>Telescope command_history<cr>', 'history'},
                        q = {'<cmd>Telescope quickfix<cr>', 'quickfix'},
                },
                g = {
                        name = '+git',
                        g = {'<cmd>Telescope git_commits<cr>', 'commits'},
                        c = {'<cmd>Telescope git_bcommits<cr>', 'bcommits'},
                        b = {'<cmd>Telescope git_branches<cr>', 'branches'},
                        s = {'<cmd>Telescope git_status<cr>', 'status'},
                        },
                f = {'<cmd>Telescope find_files<cr>', 'find files'},
                h = {'<cmd>Telescope help_tags<cr>', 'help tags'},
                r = {'<cmd>Telescope registers<cr>', 'find register'},
                t = {'<cmd>Telescope tags<cr>', 'find tags'},
                T = {'<cmd>Telescope treesitter<cr>', 'find treesitter'}
        },
        --l = {
        --        name = '+LSP',
        --        a = {'<cmd>Lspsaga code_action<CR>'},
        --        d = {'<cmd>lua vim.lsp.buf.definition()<CR>'},
        --        e = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>'},
        --        f = {'<cmd>lua vim.lsp.buf.formatting()<CR>'},
        --        h = {'<cmd>Lspsaga hover_doc<CR>'},
        --        w = {'<cmd>Lspsaga show_line_diagnostics<CR>'},
        --},
        p = {
                name ='+Packer',
                c = {'<cmd>PackerClean<cr>', 'PackerClean'},
                i = {'<cmd>PackerInstall<cr>', 'PackerInstall'},
                s = {'<cmd>PackerSync<cr>', 'PackerSync'},
                u = {'<cmd>PackerUpdate<cr>', 'PackerUpdate'},
        },
        s = {
                name = '+spectre',
                f = {[[viw:lua require('spectre').open_file_search()<cr>]], 'search in current file'},
                o = {[[:lua require('spectre').open()<cr>]], 'open spectre'},
                w = {[[viw:lua require('spectre').open_visual()<cr>]], 'search current word'}
        },
        t = {
                name = '+tabs',
                ['='] = {':-tabm<cr>', 'move tab left'},
                ['-'] = {':+tabm<cr>', 'move tab right'},
                c = {':tabc<cr>', 'tab close'},
                e = {':tabedit %<cr>', 'tab edit current file'},
                h = {':tabfirst<cr>', 'first tab'},
                i = {':tabnew $MYVIMRC<cr>', 'open init in tab'},
                j = {':tabnext<cr>', 'next tab'},
                k = {':tabprev<cr>', 'previous tab'},
                l = {':tablast<cr>', 'last tab'},
                m = {':tabnew $VIMM<cr>', 'open keymap in tab'},
                n = {':tabnew<space>', 'open new tab'},
                p = {':tabnew $VIMP<cr>', ' open plugin file'},
                s = {':tabnew $VIMS<cr>', 'open settings file'},
                u = {':tabnew $VIMU<cr>','open utils file'},
                x = {':tabnew $vimc', 'open config dir'}
        },
        u = {
                name = '+ultest',
                a = {'<cmd>UltestAttach<cr>', 'Attach (Debugging live)'},
                j = {'<cmd>UltestNearest<cr>', 'Run nearest test current file'},
                s = {'<cmd>UltestSummary<cr>', 'Toggle summary window'},
                x = {'<cmd>UltestStop<cr>', 'Stop running tests'}
        },
        v = {
                name = '+vim',
                a = {'<cmd>e $VIMA<cr>', 'autocmds config'},
                c = {'<cmd>e $VIMC/<cr>', 'plugins config'},
                i = {'<cmd>luafile $MYVIMRC<cr>', 'luafile init config'},
                j = {'<cmd>so %<cr>', 'refresh vim source'},
                m = {'<cmd>e $VIMM<cr>', 'keymaps config'},
                o = {'<cmd>e $MYVIMRC<cr>', 'edit init'},
                p = {'<cmd>e $VIMP<cr>', 'plugin list'},
                r = {'<cmd>luafile %<cr>', 'luafile %'},
                s = {'<cmd>e $VIMS<cr>', 'settings config'},
        }
}

wk.register_keymap('leader', keymap)
