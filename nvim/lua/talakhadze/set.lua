local nmap = require("talakhadze.utils.maps").nmap
local ff = require('talakhadze.utils.ff')

vim.opt.backspace = "indent,eol,start"
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 6

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
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

nmap("<Leader>r", "<cmd>set relativenumber!<cr>")

nmap('<leader>lc', ff.inspect_lsp_client, { desc = 'Inspect LSP client' })
nmap('<leader>fg', ff.folder_grep, { desc = 'Grep in folder' })
