return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",
    },

    config = function()
        --vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
        --vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>")
        vim.api.nvim_set_keymap("n", "<C-n>", "<cmd>Neotree toggle<CR>", { noremap = true })
    end,
}
