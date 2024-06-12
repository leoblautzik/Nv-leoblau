return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			sources = {
				-- c cpp
				null_ls.builtins.formatting.clang_format,
				-- lua
				null_ls.builtins.formatting.stylua,
				-- gopls
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,
			},
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}),

			-- formatea al guardar :w (sacado de dreamofcode)
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({
						group = augroup,
						buffer = bufnr,
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})
	end,
}
