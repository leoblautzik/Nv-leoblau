-- Settings
vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set backspace=indent,eol,start")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- navigate within insert mode
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sx", "<cmd>close<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Tab>", "<cmd>bn<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", "<cmd>bp<CR>", { noremap = true })
