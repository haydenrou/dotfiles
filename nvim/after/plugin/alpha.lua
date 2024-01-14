local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local asciis = require("talakhadze.utils.asciis")

dashboard.section.header.val = asciis[math.random(#asciis)]
dashboard.section.header.opts.hl = "String"

dashboard.section.buttons.val = {
    dashboard.button("<C-t>", "find file", ":Telescope find_files<CR>"),
    dashboard.button("t", "tree", ":NvimTreeToggle<CR>"),
    dashboard.button("\\", "rg", ":lua require'telescope.builtin'.live_grep()<CR>"),
    dashboard.button("u", "brew update", ":! brew update --auto-update<CR>"),
    dashboard.button("q", "quit", ":qa<CR>"),
}

local function footer()
    local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
    return datetime
        .. "   v"
        .. vim.version().major
        .. "."
        .. vim.version().minor
        .. "."
        .. vim.version().patch
end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "String"

dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)
