require("talakhadze.utils.nmap")

local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.load_extension('fzf')

Nmap('\\', function()
    builtin.grep_string({
        path_display = { 'smart' },
        only_sort_text = true,
        word_match = "-w",
        search = '',
    })
end)

Nmap('<C-t>', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", opts)
Nmap('<C-p>', builtin.find_files, {})
Nmap('<leader>b', builtin.buffers, {})
