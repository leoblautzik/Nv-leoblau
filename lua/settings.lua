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

-- compilar y ejecutar
vim.keymap.set("n", "<leader>ex", function()
	local file_name = vim.api.nvim_buf_get_name(0)
	local file_type = vim.bo.filetype

	if file_type == "lua" then
		vim.cmd(":terminal lua " .. file_name)
	elseif file_type == "c" then
		vim.cmd(":terminal gcc " .. file_name .. "; ./a.out")
	elseif file_type == "python" then
		vim.cmd(":terminal python " .. file_name)
	end
end)

-- Abre donde se dejó la ultima vez
local lastplace = vim.api.nvim_create_augroup("LastPlace", {})
vim.api.nvim_clear_autocmds({ group = lastplace })
vim.api.nvim_create_autocmd("BufReadPost", {
	group = lastplace,
	pattern = { "*" },
	desc = "remember last cursor place",
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})
