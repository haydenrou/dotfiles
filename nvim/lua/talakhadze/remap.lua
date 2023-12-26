require("talakhadze.utils.nmap")
require("talakhadze.utils.vmap")

Nmap("<leader>sp", ":norm mm[s1z=`m<cr>", opts)

Nmap("<leader>w", ":w!<cr>", opts)
Nmap("n", "nzzzv", opts)
Nmap("N", "Nzzzv", opts)
Nmap("J", "mzJ`z", opts)
Nmap("<C-d>", "<C-d>zz", opts)
Nmap("<C-u>", "<C-u>zz", opts)

Nmap("<leader><Enter>", ":noh<cr>", opts)

Vmap("J", ":m '>+1<CR>gv=gv", opts)
Vmap("K", ":m '<-2<CR>gv=gv", opts)

Nmap("<leader>y", "\"+y")
Nmap("<leader>Y", "\"+Y")
Vmap("<leader>y", "\"+y")

Vmap("<leader>p", "\"_dP", opts)
Vmap("<leader>d", "\"_d", opts)
Nmap("<leader>d", "\"_d", opts)

Nmap("Q", "<nop")

Nmap("<leader>f", function() vim.lsp.buf.format() end)

Nmap("<C-k>", "<cmd>cnext<CR>zz")
Nmap("<C-j>", "<cmd>cprev<CR>zz")
Nmap("<leader>k", "<cmd>lnext<CR>zz")
Nmap("<leader>j", "<cmd>lprev<CR>zz")

Nmap("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
