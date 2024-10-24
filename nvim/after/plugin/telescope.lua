local nmap = require("talakhadze.utils.maps").nmap

local builtin = require('telescope.builtin')
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

-- https://github.com/nvim-telescope/telescope.nvim/issues/416#issuecomment-841273053
local function fzf_multi_select(prompt_bufnr)
  local picker = action_state.get_current_picker(prompt_bufnr)
  local num_selections = #picker:get_multi_selection()

  if num_selections > 1 then
    actions.send_selected_to_qflist(prompt_bufnr)
    actions.open_qflist()
  else
    actions.file_edit(prompt_bufnr)
  end
end

require("telescope").setup {
  defaults = {
    mappings = {
      i = {
        ["<tab>"] = actions.toggle_selection + actions.move_selection_previous,
        ["<s-tab>"] = actions.toggle_selection + actions.move_selection_next,
        ["<cr>"] = fzf_multi_select
      },
      n = {
        ["<tab>"] = actions.toggle_selection + actions.move_selection_previous,
        ["<s-tab>"] = actions.toggle_selection + actions.move_selection_next,
        ["<cr>"] = fzf_multi_select
      }
    }
  }
}

nmap('\\', builtin.live_grep, {})
nmap('<C-t>', builtin.find_files, {})
nmap('<leader>b', builtin.buffers, {})
nmap('<leader>fh', ":Telescope help_tags<CR>", {})
