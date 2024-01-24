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
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },

    { "JoosepAlviste/nvim-ts-context-commentstring" },

    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" } },

    -- Colour scheme
    { "rose-pine/neovim", lazy = false, priority = 1000 },

    -- lsp-zero
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },

    { 'ThePrimeagen/harpoon', branch = 'harpoon2' },

    { 'mbbill/undotree' },

    { 'tpope/vim-fugitive' },
    { 'tpope/vim-rhubarb' },

    { 'github/copilot.vim' },

    { 'nvim-tree/nvim-tree.lua' },
    { 'nvim-tree/nvim-web-devicons' },

    { 'nvim-lualine/lualine.nvim' },
    { 'numToStr/Comment.nvim', dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" } },

    { "kylechui/nvim-surround", version = "*", event = "VeryLazy" },

    { 'goolord/alpha-nvim', dependencies = { "nvim-tree/nvim-web-devicons" }, event = "VimEnter" }
}

require("lazy").setup(plugins, opts)
