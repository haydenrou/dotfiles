local M = {}

function M.nmap(lhs, rhs, opt)
    vim.keymap.set("n", lhs, rhs, opt)
end

function M.vmap(lhs, rhs, opt)
    vim.keymap.set("v", lhs, rhs, opt)
end

function M.imap(lhs, rhs, opt)
    vim.keymap.set("i", lhs, rhs, opt)
end

return M
