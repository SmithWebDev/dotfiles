--local utils = require'smithwebdev.start.utils'
local config = require 'lspconfig'
local servers = {'solargraph', 'cssls', 'elixirls', 'html', 'jsonls', 'sumneko_lua', 'tsserver', 'vimls', 'vuels', 'yamlls'}

local function swd_on_attach()
end

local function setup_servers() 
	for server in servers do
		config[server].setup{on_attach = swd_on_attach}
	end
end

-- LSP Saga
-- -------------------------------------
--utils.keymap('n', '<C-S-j>', [[:lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>]])
--utils.keymap('n', '<C-S-k>', [[:lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>]])
--utils.keymap('v', '<leader>la', ':<C-U>Lspsaga range_code_action<cr>')


