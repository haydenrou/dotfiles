-- ============================================================================== --
--  FILE:         vimrc                                                           --
--  AUTHOR:       Hayden Rouille :: https://github.com/haydenrou                  --
--  DESCRIPTION:  My general vimrc config                                         --
-- ============================================================================== --

require("talakhadze.lazy")

require("talakhadze.colorscheme")
require("talakhadze.set")
require("talakhadze.remap")

vim.g.netrw_browse_split = 0
-- vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
