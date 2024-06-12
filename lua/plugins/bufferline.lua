return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				--mode = "tabs",
				offsets = { { filetype = "neo-tree", text = "File Explorer", separator = true, text_align = "left" } },
			},
		})
	end,
}
