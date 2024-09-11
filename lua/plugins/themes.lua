return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
			vim.keymap.set("n", "<leader>tt", function()
				vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
				vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
				vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
				vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", ctermbg = "none" })
				vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
			end)
			vim.keymap.set("n", "<leader>nt", function()
				vim.cmd.colorscheme("catppuccin-mocha")
			end)
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
		-- priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("tokyonight-night")
		end,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			-- vim.cmd.colorscheme("rose-pine")
		end,
	},
	-- color = vim.cmd.colorscheme(),
}
