return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				globalstatus = true,
				section_separators = "",
				component_separators = "",
			},
			--inactive_winbar = {
			--	lualine_c = { "filename" },
			--},
		})
	end,
}
