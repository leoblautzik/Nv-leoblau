return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
			-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			-- vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", ctermbg = "none" })
			-- vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
		end,
	},
	-- {
	-- 	"Mofiqul/dracula.nvim",
	-- 	name = "dracula",
	-- 	-- priority = 1000,
	-- 	config = function()
	-- 		--	vim.cmd.colorscheme("dracula")
	-- 	end,
	-- },
	-- {
	-- 	"sainnhe/gruvbox-material",
	-- 	name = "gruvbox",
	-- 	-- priority = 1000,
	-- 	config = function()
	-- 		--	vim.cmd.colorscheme("gruvbox")
	-- 	end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	-- priority = 1000,
	-- 	config = function()
	-- 		-- vim.cmd.colorscheme("tokyonight-night")
	-- 	end,
	-- },
}
