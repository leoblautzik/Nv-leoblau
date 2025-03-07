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
--vim.cmd('let @p = "[V"]>')

------------------------------------------------------------------

-- navigate within insert mode
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Tab>", "<cmd>bn<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", "<cmd>bp<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sh", "<C-w>s", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sv", "<C-w>v", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>se", "<C-w>=", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sx", "<cmd>close<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", {})
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", {})
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", {})
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", {})
vim.api.nvim_set_keymap("n", "<Home>", "<Nop>", {})
vim.api.nvim_set_keymap("n", "<PageUp>", "<Nop>", {})
vim.api.nvim_set_keymap("n", "<PageDown>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Up>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Down>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Left>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Right>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Home>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<PageUp>", "<Nop>", {})

vim.api.nvim_set_keymap("i", "<PageDown>", "<Nop>", {})
------------------------------------------------------------------
-- macro para identar hacia la izquierda un bloque que fue movido
vim.fn.setreg("p", "'[V']>")

-- macro para identar hacia la derecha un bloque que fue movido
vim.fn.setreg("q", "'[V']<")

------------------------------------------------------------------

-- compilar y ejecutar
vim.keymap.set("n", "<leader>ex", function()
    local file_name = vim.api.nvim_buf_get_name(0)
    local file_type = vim.bo.filetype

    if file_type == "lua" then
        vim.cmd(":terminal lua " .. file_name)
    elseif file_type == "c" then
        vim.cmd(":terminal gcc " .. file_name .. "; ./a.out")
    elseif file_type == "python" then
        vim.cmd(":terminal python3 " .. file_name)
    end
end)
------------------------------------------------------------------

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
------------------------------------------------------------------

-- Relativo en modo Normal ---------------------------------------
-- Absoluto en modo Insert
local vim = vim
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- automatic number toggle
local number_toggle = augroup("numbertoggle", { clear = true })

autocmd({ "InsertLeave" }, {
    pattern = "*",
    group = number_toggle,
    command = "setlocal relativenumber",
})

autocmd({ "InsertEnter" }, {
    pattern = "*",
    group = number_toggle,
    command = "setlocal norelativenumber",
})
------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.py",
    callback = function()
        vim.api.nvim_buf_set_lines(
            0,
            0,
            0,
            false,
            { "def main():", "    pass", "", 'if __name__ == "__main__":', "    main()" }
        )
        vim.api.nvim_win_set_cursor(0, { 2, 4 }) -- Mueve el cursor a la línea con la indentación
    end,
})
