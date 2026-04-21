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

  { 'ThePrimeagen/harpoon',  branch = 'harpoon2',      keys = { { "<leader>a", function() require("harpoon"):list():add() end, desc = "Harpoon Add" } } },

  { 'mbbill/undotree',       cmd = "UndotreeToggle" },

  { 'stevearc/conform.nvim', event = { "BufWritePre" } },

  { 'tpope/vim-fugitive',    cmd = { "Git", "G" } },
  { 'tpope/vim-rhubarb',     lazy = true },

  -- Copilot setup
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_no_tab_map = true
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<C-L>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        panel = { enabled = false },
      })
      vim.keymap.set("n", "<leader>G", ":lua vim.g.copilot_enabled = not vim.g.copilot_enabled<CR>",
        { noremap = true, silent = true })
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "zbirenbaum/copilot.lua" },
    build = "make tiktoken",
    cmd = { "CopilotChat", "CopilotChatOpen", "CopilotChatDebug", "CopilotChatTest" },
    keys = {
      { "<leader>cc", "<cmd>CopilotChat<cr>",      desc = "Open Copilot Chat" },
      { "<leader>cd", "<cmd>CopilotChatDebug<cr>", desc = "Debug with Copilot" },
      { "<leader>ct", "<cmd>CopilotChatTest<cr>",  desc = "Generate Tests with Copilot" },
    },
    opts = {
      model = "gpt-4.1",
      temperature = 0.1,
      window = {
        layout = "float",
        width = 0.7,  -- 70% of screen width
        height = 0.6, -- 60% of screen height
        border = "rounded",
        title = "🤖 Copilot Chat",
        relative = "editor",                    -- Center relative to editor
        anchor = "NW",                          -- Top-left anchor
        row = 5,                                -- Slight offset from top
        col = math.floor(vim.o.columns * 0.15), -- Center horizontally
        zindex = 50,                            -- Ensure visibility over other windows
      },
      show_folds = false,
      auto_insert_mode = true,
      prompts = {
        Default = {
          prompt = "#buffers",
          system_prompt = "You are a helpful coding assistant with access to all open buffers in my Neovim session.",
        },
        Debug = {
          prompt = "#buffers #diagnostics:current",
          system_prompt = "Debug the code in my buffers, focusing on diagnostics and errors.",
          mapping = "<leader>cd",
        },
        Test = {
          prompt = "#buffers /Tests",
          system_prompt = "Generate tests for the code in my buffers.",
          mapping = "<leader>ct",
        },
      },
      tools = {
        copilot = {
          auto_invoke = true,
        },
      },
      mappings = {
        complete = { insert = "<C-]>" },
        submit_prompt = { normal = "<CR>", insert = "<C-]>" },
        close = { normal = "q", insert = "<C-c>" },
        show_help = { normal = "<leader>h" },
      },
    },
  },

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

-- Ensure completeopt is set for CopilotChat.nvim
vim.opt.completeopt = { "menu", "menuone", "noselect", "popup" }

-- Configure nvim-cmp to include Copilot
require("cmp").setup({
  sources = {
    { name = "copilot",  group_index = 2 },
    { name = "nvim_lsp", group_index = 2 },
    { name = "path",     group_index = 2 },
  },
  mapping = {
    ["<Tab>"] = require("cmp").mapping.select_next_item(),
    ["<S-Tab>"] = require("cmp").mapping.select_prev_item(),
  },
})

-- Load Telescope ui-select for CopilotChat.nvim
require("telescope").load_extension("ui-select")
