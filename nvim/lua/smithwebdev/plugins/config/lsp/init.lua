local utils = require'smithwebdev.start.utils'
local config = require 'lspconfig'
local install = require 'lspinstall'
local status = require 'lsp-status'

local function swd_on_attach()
end

local function setup_servers()
	install.setup()

	for _, server in pairs(install.installed_servers()) do
		config[server].setup{on_attach = swd_on_attach}
	end
end

setup_servers()

install.post_install_hook = function ()
	setup_servers()
	vim.cmd("bufdo e")
end


-- LSP Saga
-- -------------------------------------
--utils.keymap('n', '<C-S-j>', [[:lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>]])
--utils.keymap('n', '<C-S-k>', [[:lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>]])
--utils.keymap('v', '<leader>la', ':<C-U>Lspsaga range_code_action<cr>')


