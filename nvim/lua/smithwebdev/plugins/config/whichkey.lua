local wk = require('whichkey_setup')


local keymap = {
        ['<leader>'] = { 
                name = '+extended',
                b = {
                        name = '+Bracey',
                        b = {'<cmd>Bracey', 'start Bracey server'},
                        r = {'<cmd>BraceyReload', 'reload Bracey server'},
                        s = {'<cmd>BraceyStop', 'stop Bracey server'},
                },
                e = {'<cmd>NvimTreeToggle<cr>', 'toggle NvimTree'},
                --s = {'<cmd><cr>', 'show open tabs'},
                t = {':tabs<cr>', 'show open tabs'},
                u = {'<cmd>Ultest', 'Run all test current file'},
        },
        b = { name = '+buffers' },
        e = {
                name = '+NvimTree',
                f = {'<cmd>NvimTreeFindFile<cr>', 'NvimTreeFindFile'}
        },
        f = {
                name = '+find',
                b = {'<cmd>Telescope buffers<CR>', 'buffers'},
                c = {
                        name = '+commands',
                        c = {'<cmd>Telescope commands<CR>', 'commands'},
                        h = {'<cmd>Telescope command_history<CR>', 'history'},
                        q = {'<cmd>Telescope quickfix<CR>', 'quickfix'},
                        g = {
                                name = '+git',
                                g = {'<cmd>Telescope git_commits<CR>', 'commits'},
                                c = {'<cmd>Telescope git_bcommits<CR>', 'bcommits'},
                                b = {'<cmd>Telescope git_branches<CR>', 'branches'},
                                s = {'<cmd>Telescope git_status<CR>', 'status'},
                        },
                },
                f = {'<cmd>Telescope find_files<CR>', 'find files'},
                h = {'<cmd>Telescope help_tags<CR>', 'help tags'},
                r = {'<cmd>Telescope registers<CR>', 'find register'},
                t = {'<cmd>Telescope tags<CR>', 'find tags'},
                T = {'<cmd>Telescope treesitter<cr>', 'find treesitter'}
        },
        p = {
                name ='+Packer',
                c = {'<cmd>PackerClean<CR>', 'PackerClean'},
                i = {'<cmd>PackerInstall<CR>', 'PackerInstall'},
                s = {'<cmd>PackerSync<CR>', 'PackerSync'},
                u = {'<cmd>PackerUpdate<CR>', 'PackerUpdate'},
        },
        t = {
                name = '+tabs',
                ['='] = {':-tabm<CR>', 'move tab left'},
                ['-'] = {':+tabm<CR>', 'move tab right'},
                c = {':tabc<cr>', 'tab close'},
                e = {':tabedit %<cr>', 'tab edit current file'},
                h = {':tabfirst<cr>', 'first tab'},
                i = {':tabnew $MYVIMRC<CR>', 'open init in tab'},
                j = {':tabnext<cr>', 'next tab'},
                k = {':tabprev<cr>', 'previous tab'},
                l = {':tablast<cr>', 'last tab'},
                m = {':tabnew $VIMM<CR>', 'open keymap in tab'},
                n = {':tabnew<space>', 'open new tab'},
                p = {':tabnew $VIMP<CR>', ' open plugin file'},
                s = {':tabnew $VIMS<CR>', 'open settings file'},
                u = {':tabnew $VIMU<CR>','open utils file'},
                x = {':tabnew $vimc', 'open config dir'}
        },
        u = {
                name = '+ultest',
                a = {'<cmd>UltestAttach', 'Attach (Debugging live)'},
                j = {'<cmd>UltestNearest', 'Run nearest test current file'},
                s = {'<cmd>UltestSummary', 'Toggle summary window'},
                x = {'<cmd>UltestStop', 'Stop running tests'}
        },
        v = {
                name = '+vim',
                a = {'<cmd>e $VIMA<CR>', 'autocmds config'},
                c = {'<cmd>e $VIMC/<CR>', 'plugins config'},
                i = {'<cmd>luafile $MYVIMRC', 'luafile init config'},
                j = {'<cmd>so %<CR>', 'refresh vim source'},
                m = {'<cmd>e $VIMM<CR>', 'keymaps config'},
                p = {'<cmd>e $VIMP<CR>', 'plugin list'},
                r = {'<cmd>luafile %', 'luafile %'},
                s = {'<cmd>e $VIMS<CR>', 'settings config'},
                v = {'<cmd>e $MYVIMRC<CR>', 'edit init'}
        },
        s = {
                name = '+spectre',
                f = {[[viw:lua require('spectre').open_file_search()<CR>]], 'search in current file'},
                s = {[[:lua require('spectre').open()<CR>]], 'open spectre'},
                w = {[[viw:lua require('spectre').open_visual()<CR>]], 'search current word'}
        }
}

wk.register_keymap('leader', keymap)
