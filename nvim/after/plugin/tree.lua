require("talakhadze.utils.nmap")

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
        side = 'right',
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})

local api = require("nvim-tree.api")

Nmap('<leader>nn', api.tree.toggle)
Nmap('<leader>nf', function() api.tree.toggle({ find_file = true, focus = true }) end)

