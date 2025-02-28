return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		-- priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("catppuccin-mocha")
			-- vim.keymap.set("n", "<leader>tt", function()
			--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			--     vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
			--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			--     vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", ctermbg = "none" })
			--     vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
			-- end)
			-- vim.keymap.set("n", "<leader>nt", function()
			--     vim.cmd.colorscheme("catppuccin-mocha")
			-- end)
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
		"sainnhe/everforest",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			-- vim.g.everforest_enable_italic = true
			-- vim.g.everforest_background = "hard"
			-- vim.g.everforest_transparent_background = 0
			-- vim.g.everforest_enable_italic = 1
			--
			-- vim.cmd.colorscheme("everforest")
			-- vim.keymap.set("n", "<leader>tt", function()
			--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			--     vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
			--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			--     vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", ctermbg = "none" })
			--     vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
			-- end)
			-- vim.keymap.set("n", "<leader>nt", function()
			--     vim.cmd.colorscheme("everforest")
			-- end)
		end,
	},
	{
		"sainnhe/gruvbox-material",
		name = "gruvbox",
		-- priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("gruvbox-material")
			-- vim.keymap.set("n", "<leader>tt", function()
			-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			-- 	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
			-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			-- 	vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", ctermbg = "none" })
			-- 	vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
			-- end)
			-- vim.keymap.set("n", "<leader>nt", function()
			-- 	vim.cmd.colorscheme("gruvbox-material")
			-- end)
			-- vim.cmd.colorscheme("gruvbox")
		end,
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			-- 	vim.cmd.colorscheme("tokyonight-night")
			-- 	vim.keymap.set("n", "<leader>tt", function()
			-- 		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			-- 		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
			-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			-- 		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", ctermbg = "none" })
			-- 		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
			-- 	end)
			-- 	vim.keymap.set("n", "<leader>nt", function()
			-- 		vim.cmd.colorscheme("tokyonight-night")
			-- 	end)
		end,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("rose-pine")
			vim.keymap.set("n", "<leader>tt", function()
				vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
				vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
				vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
				vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", ctermbg = "none" })
				vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
			end)
			vim.keymap.set("n", "<leader>nt", function()
				vim.cmd.colorscheme("rose-pine")
			end)
		end,
	},
	-- color = vim.cmd.colorscheme(),
}
