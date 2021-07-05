local on_attach = function(client, bufnr)
  require'lsp-status'.on_attach(client)
  require'lsp_signature'.on_attach(client)

  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
  print(client.name .. ' is now attached.')
end

require'lspsaga'.init_lsp_saga()


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
      require'lspconfig'[server].setup {
        on_attach = on_attach,
        capabilities = capabilities
      }
  end
end

setup_servers()

require'lspinstall'.post_install_hook = function ()
  setup_servers()
  vim.cmd("bufdo e")
end

require'lspconfig'.html.setup{
  filetypes = {"html", "eruby"}}
