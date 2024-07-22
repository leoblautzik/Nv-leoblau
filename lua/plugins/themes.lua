return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		-- priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"Mofiqul/dracula.nvim",
		name = "dracula",
		-- priority = 1000,
		config = function()
			--	vim.cmd.colorscheme("dracula")
		end,
	},
	{
		"sainnhe/gruvbox-material",
		name = "gruvbox",
		-- priority = 1000,
		config = function()
			--	vim.cmd.colorscheme("gruvbox")
		end,
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},
}
