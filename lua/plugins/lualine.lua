return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin",
        globalstatus = true,
      },
      --inactive_winbar = {
      --	lualine_c = { "filename" },
      --},
    })
  end,
}
