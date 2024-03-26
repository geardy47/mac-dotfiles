return {
	-- LSP settings.
	--  This function gets run when an LSP connects to a particular buffer.
	on_attach = function(_, bufnr)
		-- NOTE: Remember that lua is a real programming language, and as such it is possible
		-- to define small helper and utility functions so you don't have to repeat yourself
		-- many times.
		--
		-- In this case, we create a function that lets us more easily define mappings specific
		-- for LSP related items. It sets the mode, buffer and description for us each time.
		local nmap = function(keys, func, desc)
			if desc then
				desc = 'LSP: ' .. desc
			end

			vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
		end

		nmap('<leader>lr', vim.lsp.buf.rename, '[R]e[n]ame')
		nmap('<leader>lc', vim.lsp.buf.code_action, '[C]ode [A]ction')

		nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
		nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
		nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
		nmap('<leader>lD', vim.lsp.buf.type_definition, 'Type [D]efinition')
		nmap('<leader>ld', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
		nmap('<leader>lw', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
		nmap('<leader>lh', vim.lsp.buf.hover, '[H]over')

		nmap('<leader>lf', function()
			require('telescope').extensions.flutter.commands()
		end, 'Flutter tools')

		-- See `:help K` for why this keymap
		nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
		nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

		-- Lesser used LSP functionality
		nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
		nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
		nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
		nmap('<leader>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, '[W]orkspace [L]ist Folders')

		-- Create a command `:Format` local to the LSP buffer
		vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
			vim.lsp.buf.format()
		end, { desc = 'Format current buffer with LSP' })
	end,

	-- Enable the following language servers
	--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
	--
	--  Add any additional override configuration in the following tables. They will be passed to
	--  the `settings` field of the server config. You must look up that documentation yourself.
	servers = {
		-- clangd = {},
		-- gopls = {},
		-- pyright = {},
		-- rust_analyzer = {},
		-- tsserver = {},

		lua_ls = {
			Lua = {
				workspace = {
					checkThirdParty = false,
				},
				telemetry = { enable = false },
			},
		},
	}


}
