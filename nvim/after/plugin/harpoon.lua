local nmap = require("talakhadze.utils.nmap")

local harpoon = require("harpoon")

harpoon:setup()

nmap("<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
nmap("<leader>a", function() harpoon:list():append() end)
