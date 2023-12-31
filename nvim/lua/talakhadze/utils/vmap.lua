local V = {}

function V.vmap(lhs, rhs, opt)
    vim.keymap.set("v", lhs, rhs, opt)
end

return V.vmap
