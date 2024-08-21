return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				globalstatus = true,
				section_separators = { left = "", right = "" },
				component_separators = "",
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 1 } },
				-- lualine_b = { "filename", "branch" },
				-- lualine_c = {
				-- 	"%=", --[[ add your center compoentnts here in place of this comment ]]
				-- },
				-- lualine_x = {},
				-- lualine_y = { "filetype", "progress" },
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 1 },
				},
			},
			--inactive_winbar = {
			--	lualine_c = { "filename" },
			--},
		})
	end,
}
