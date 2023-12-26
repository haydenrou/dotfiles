local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')
require('talakhadze.utils.nmap')
require('talakhadze.utils.imap')

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { "tsserver", "eslint", "solargraph", "lua_ls", "tailwindcss", "rust_analyzer", "gopls", "templ", "cmake", "jsonls", "emmet_ls" },
    handlers = {
        lsp_zero.default_setup,
    },
})

-- Formatting for GO Templ files
vim.api.nvim_create_autocmd({ "BufWritePre" }, { pattern = { "*.templ" }, callback = function() vim.lsp.buf.format() end, })

require("lspconfig").tailwindcss.setup({
    filetypes = {
        'templ'
        -- include any other filetypes where you need tailwindcss
    },
    init_options = {
        userLanguages = {
            templ = "html"
        }
    }
})

vim.filetype.add({
    extension = {
        templ = "templ",
    },
})

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim', 'opts' }
            }
        }
    }
}

lspconfig.solargraph.setup {
    filetypes = { "ruby", "rakefile" },
    root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
    settings = {
        solargraph = {
            autoformat = true,
            completion = true,
            hover = true,
            formatting = true,
            diagnostic = true,
            folding = true,
            references = true,
            rename = true,
            symbols = true
        }
    }
}

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),

        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = true }),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),

        -- Scroll up and down in the completion documentation
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    })
})

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    Nmap("gd", function() vim.lsp.buf.definition() end, opts)
    Nmap("K", function() vim.lsp.buf.hover() end, opts)
    Nmap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    Nmap("<leader>vd", function() vim.diagnostic.open_float() end, opts)
    Nmap("[g", function() vim.diagnostic.goto_prev() end, opts)
    Nmap("]g", function() vim.diagnostic.goto_next() end, opts)
    Nmap("<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    Nmap("<leader>vrr", function() vim.lsp.buf.references() end, opts)
    Nmap("<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    Imap("<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp_zero.setup()
