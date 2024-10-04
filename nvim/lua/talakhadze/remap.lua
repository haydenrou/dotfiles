local nmap = require("talakhadze.utils.maps").nmap
local vmap = require("talakhadze.utils.maps").vmap

nmap("<leader>sp", ":norm mm[s1z=`m<cr>", opts)

nmap("<leader>w", ":w!<cr>", opts)
nmap("n", "nzzzv", opts)
nmap("N", "Nzzzv", opts)
nmap("J", "mzJ`z", opts)
nmap("<C-d>", "<C-d>zz", opts)
nmap("<C-u>", "<C-u>zz", opts)

nmap("<leader><Enter>", ":noh<cr>", opts)

vmap("J", ":m '>+1<CR>gv=gv", opts)
vmap("K", ":m '<-2<CR>gv=gv", opts)

nmap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")
vmap("<leader>y", "\"+y")

vmap("<leader>p", "\"_dP", opts)
vmap("<leader>d", "\"_d", opts)
nmap("<leader>d", "\"_d", opts)

nmap("Q", "<nop")

nmap("<leader>f", function() vim.lsp.buf.format() end)

nmap("<C-j>", "<cmd>cnext<CR>zz")
nmap("<C-k>", "<cmd>cprev<CR>zz")

nmap("<leader>h", "<C-w>h")
nmap("<leader>j", "<C-w>j")
nmap("<leader>k", "<C-w>k")
nmap("<leader>l", "<C-w>l")

nmap("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

nmap("<leader><leader>s", ":source %<CR>")

nmap("<leader>+", ":vertical resize +5<CR>", { silent = true })
nmap("<leader>-", ":vertical resize -5<CR>", { silent = true })
