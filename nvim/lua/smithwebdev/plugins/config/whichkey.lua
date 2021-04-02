local wk = require('whichkey_setup')

local keymap = {
        b = '+buffers',
        f = {
                name = '+find',
                b = {'<cmd>Telescope buffers<CR>', 'buffers'},
                h = {'<cmd>Telescope help_tags<CR>', 'help tags'},
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
        },
        P = '+Packer',
        t = '+tabs',
        v = '+vim',
}

wk.register_keymap('leader', keymap)
