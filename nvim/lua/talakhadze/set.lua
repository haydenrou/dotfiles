vim.opt.backspace = "indent,eol,start"
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.cursorline = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 6

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.signcolumn = "yes"

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.spell = true
vim.opt.spelllang = "en_gb"

vim.opt.expandtab = true

vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"
vim.opt.undofile = true

vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"

local Talakhadze = vim.api.nvim_create_augroup('Talakhadze', {})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    group = Talakhadze,
    pattern = { "*" },
    command = [[%s/\s\+$//e]],
})

vim.keymap.set("n", "<Leader>r", "<cmd>set relativenumber!<cr>")

