local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'jdtls','lua_ls'},
	handlers = {
		lsp_zero.default_setup,
	},
	require('lspconfig').lua_ls.setup({}),
	require('lspconfig').jdtls.setup({})
})
