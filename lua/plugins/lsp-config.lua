return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"gopls",
					"pyright",
					"jdtls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			-- local on_attach = require("cmp_nvim_lsp").default_on_attach()
			local lspconfig = require("lspconfig")

			-- lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			-- c
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})

			-- go
			lspconfig.gopls.setup({
				capabilities = capabilities,
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				--root_dir = util.root_pattern("go.work", "go.mod", ".git"),
				settings = {
					gopls = {
						completeUnimported = true,
						usePlaceholders = true,
						analyses = {
							unusedparams = true,
						},
					},
				},
			})

			-- python
			lspconfig.pyright.setup({
				-- on_attach = on_attach,
				capabilities = capabilities,
				filetypes = { "python" },
				settings = {
					pyright = {
						disableLanguageServices = false,
						disableOrganizeImports = false,
					},
				},
				analysis = {
					autoImportCompletions = true,
					typeCheckingMode = "off",
					autoSearchPaths = true,
					useLibraryCodeForTypes = true,
					diagnosticMode = "workspace", -- "openFilesOnly",
				},
			})

			-- java
			lspconfig.jdtls.setup({
				on_attach = function(client, bufnr)
					client.server_capabilities.signatureHelpProvider = false
					-- on_attach(client, bufnr)
				end,
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set({ "n", "v" }, "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set({ "n", "v" }, "<leader>lf", vim.diagnostic.open_float, {})
		end,
	},
}
