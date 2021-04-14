local utils = require'smithwebdev.utils'
local config = require 'lspconfig'
local install = require 'lspinstall'
local status = require 'lsp-status'

local function setup_servers()
	install.setup()

	local servers = install.installed_servers()
	for _, server in pairs(servers) do 
		config[server].setup{on_attach = on_attach}
	end
end

setup_servers()

install.post_install_hook = function ()
	setup_servers()
	vim.cmd("bufdo e")
end


-- LSP Saga
-- -------------------------------------
utils.keymap('n', '<C-S-j>', [[:lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>]])
utils.keymap('n', '<C-S-k>', [[:lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>]])
utils.keymap('v', '<leader>la', ':<C-U>Lspsaga range_code_action<cr>')
