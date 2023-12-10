-- pg 88-90
-- Setup language servers
local lspconfig = require("lspconfig")
lspconfig.ttsserver.setup{}

-- Global mappings
vim.keymap.set('n', '<leader>l', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the buffer
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		-- Enable completion triggered by <C-x><C-o>
		vim.bo[ev.buf].opmnifunc = 'v:lua.vim.lsp.omnifunc'

		-- Buffer local mappings
		local opts = { bugger = ev.buf }
		vim.keymap.set('n', '<Enter>', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', '<Tab>', vim.lsp.buf.hover, opts)
	end,
})

vim.api.nvim_create_user_command('LspLocList', function(opts)
	vim.diagnostic.setloclist()
end, {})

vim.api.nvim_create_user_command('LspRename', function(opts)
	vim.lsp.buf.rename()
end, {})

vim.api.nvim_create_user_command('LspFormat', function(opts)
	vim.lsp.buf.format({ async = true})
end, {})
