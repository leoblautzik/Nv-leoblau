return {
	-- "lukas-reineke/indent-blankline.nvim",
	-- config = function()
	-- 	local highlight = {
	-- 		"CursorColumn",
	-- 		"Whitespace",
	-- 	}
	-- 	require("ibl").setup({
	-- 		indent = { highlight = highlight, char = "." },
	-- 		whitespace = {
	-- 			highlight = highlight,
	-- 			remove_blankline_trail = false,
	-- 		},
	-- 		scope = { enabled = false },
	-- 	})
	-- end,

	--  "lukas-reineke/indent-blankline.nvim",
	-- version = "2.20.7",
	-- event = "User FilePost",
	-- opts = function()
	-- 	return require("plugins.configs.others").blankline
	-- end,
	-- config = function(_, opts)
	-- 	require("core.utils").load_mappings("blankline")
	-- 	dofile(vim.g.base46_cache .. "blankline")
	-- 	require("indent_blankline").setup(opts)
	-- end,
}
