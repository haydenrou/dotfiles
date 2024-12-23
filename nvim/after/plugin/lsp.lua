local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')
local nmap = require('talakhadze.utils.maps').nmap

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "ts_ls", "eslint", "solargraph", "lua_ls", "tailwindcss", "rust_analyzer", "gopls", "templ", "cmake", "jsonls", "emmet_ls" },
  handlers = {
    lsp_zero.default_setup,
  },
})

lspconfig.tailwindcss.setup({
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

  nmap("gd", function() vim.lsp.buf.definition() end, opts)
  nmap("K", function() vim.lsp.buf.hover() end, opts)
  nmap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  nmap("<leader>vd", function() vim.diagnostic.open_float() end, opts)
  nmap("[g", function() vim.diagnostic.goto_prev() end, opts)
  nmap("]g", function() vim.diagnostic.goto_next() end, opts)
  nmap("<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  nmap("<leader>gr", function() vim.lsp.buf.references() end, opts)
  nmap("<leader>cr", function() vim.lsp.buf.rename() end, opts)
  nmap("<leader>cf", function() vim.lsp.buf.code_action({ "quickfix", apply = true }) end, opts)
end)

lsp_zero.setup()
