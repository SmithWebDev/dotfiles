local lsp_status = require 'lsp-status'

local function setup_servers()
	require 'lspinstall'.setup()

	local servers = require 'lspinstall'.installed_servers()
	for _, server in pairs(servers) do
		require 'lspconfig'[server].setup{on_attach = on_attach}
	end
end

--setup_servers()

require 'lspinstall'.post_install_hook = function ()
	setup_servers()
	vim.cmd("bufdo e")
end
