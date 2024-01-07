local nmap = require("talakhadze.utils.maps").nmap

nmap("<leader>gs", vim.cmd.Git)
nmap("<leader>gj", ":diffget //3<CR>")
nmap("<leader>gf", ":diffget //2<CR>")
nmap("<leader>gdf", ":Gdiff<CR>")

