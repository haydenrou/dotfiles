require("talakhadze.utils.nmap")

local harpoon = require("harpoon")

harpoon:setup()

Nmap("<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
Nmap("<leader>a", function() harpoon:list():append() end)
