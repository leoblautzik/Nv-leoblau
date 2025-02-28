local ls = require("luasnip")

-- Cargar snippets desde la carpeta personalizada
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/LuaSnip/snippets" })

-- Opcional: Habilitar expansión con <Tab> (si no lo tienes configurado)
vim.keymap.set({ "i", "s" }, "<Tab>", function()
	return ls.expand_or_jumpable() and "<Cmd>lua require'luasnip'.expand_or_jump()<CR>" or "<Tab>"
end, { expr = true, silent = true })
