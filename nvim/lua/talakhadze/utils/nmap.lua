local U = {}

function U.nmap(lhs, rhs, opt)
    vim.keymap.set("n", lhs, rhs, opt)
end

return U.nmap
