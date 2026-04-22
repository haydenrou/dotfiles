local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofmt", stop_after_first = true },
    templ = { "rustywind", "templ", stop_after_first = true },
    javascript = { "eslint", "prettierd", "prettier", stop_after_first = true },
    typescript = { "eslint", "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "eslint", "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "eslint", "prettierd", "prettier", stop_after_first = true },
    ruby = { "standardrb" },
    ["_"] = { "trim_whitespace" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})
