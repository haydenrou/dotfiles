-- ============================================================================== --
--  FILE:         init.lua                                                        --
--  AUTHOR:       Hayden Rouille :: https://github.com/haydenrou                  --
--  DESCRIPTION:  NeoVim configuration file                                       --
-- ============================================================================== --

vim.g.mapleader = " "

require("talakhadze.lazy")

require("talakhadze.colorscheme")
require("talakhadze.set")
require("talakhadze.remap")
