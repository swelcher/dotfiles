local status, mason = pcall(require, 'mason')

if (not status) then
	vim.notify("problem with mason")
	return
end

local status2, lspconfig = pcall(require, 'mason-lspconfig')
if (not status2) then 
	vim.notify("problem with mason-lspconfig")
	return
end


mason.setup{}

lspconfig.setup {
  ensure_installed = { "lua_ls","tailwindcss", "denols", "gopls", "solargraph", "jedi_language_server", "bashls"},
}

 lspconfig.setup_handlers({
      function(server_name)
          require("lspconfig")[server_name].setup({
            on_attach = function(client, bufnr)
              end
            })
          end
    })

