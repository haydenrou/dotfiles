local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.load_extension('fzf')

vim.keymap.set('n', '\\', function()
  builtin.grep_string({
    path_display = { 'smart' },
    only_sort_text = true,
    word_match = "-w",
    search = '',
  })
end)

vim.keymap.set('n', '<C-t>', builtin.git_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
