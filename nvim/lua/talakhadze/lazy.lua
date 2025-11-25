local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
  },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "nvim-mini/mini.icons" },
    opts = {}
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
    lazy = true,
  },
  { 'nvim-telescope/telescope-ui-select.nvim',     lazy = true },

  { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "javascript" },
        auto_install = false,
        highlight = { enable = true },
        incremental_selection = { enable = true },
      })
    end,
  },

  -- Colour scheme
  {
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("rose-pine")
    end
  },

  -- lsp-zero
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      { 'williamboman/mason.nvim',          config = true },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'neovim/nvim-lspconfig' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/nvim-cmp' },
      { 'L3MON4D3/LuaSnip' },
    },
    config = function()
      require("lsp-zero").setup()
    end,
  },

  { 'ThePrimeagen/harpoon',  branch = 'harpoon2',       keys = { { "<leader>a", function() require("harpoon"):list():add() end, desc = "Harpoon Add" } } },

  { 'mbbill/undotree',       cmd = "UndotreeToggle" },

  { 'stevearc/conform.nvim', event = { "BufWritePre" }, config = function() require("conform").setup({ formatters_by_ft = { lua = { "stylua" } } }) end },

  { 'tpope/vim-fugitive',    cmd = { "Git", "G" } },
  { 'tpope/vim-rhubarb',     lazy = true },

  { 'github/copilot.vim' },

  {
    'nvim-tree/nvim-tree.lua',
    cmd = "NvimTreeToggle",
    config = function()
      require(
        "nvim-tree").setup()
    end
  },
  { 'nvim-tree/nvim-web-devicons',          lazy = true },

  {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    config = function()
      require(
        "lualine").setup()
    end
  },
  {
    'numToStr/Comment.nvim',
    event = "BufReadPost",
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
    config = function()
      require("Comment").setup()
    end
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end
  },

  {
    'goolord/alpha-nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end
  },

  { "tpope/vim-dadbod",                     cmd = "DB" },
  { "kristijanhusak/vim-dadbod-completion", lazy = true },
  { "kristijanhusak/vim-dadbod-ui",         cmd = "DBUI" },
}

require("lazy").setup(plugins, {
  performance = {
    rtp = {
      disabled_plugins = { "netrwPlugin" },
    },
  },
})
