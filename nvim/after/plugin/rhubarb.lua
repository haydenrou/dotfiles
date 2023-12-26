require("talakhadze.utils.nmap")
-- disable netrw, but enable a Browse function using macs `open` so that rhubarb works
-- see below article:
-- https://www.reddit.com/r/neovim/comments/olq8dw/defining_the_browse_command_for_use_with/
vim.g.nvim_tree_disable_netrw = 0
vim.api.nvim_create_user_command(
  'Browse',
  function (opts)
    vim.fn.system { 'open', opts.fargs[1] }
  end,
  { nargs = 1 }
)


Nmap("<leader>gb", ":GBrowse<cr>", opts)
