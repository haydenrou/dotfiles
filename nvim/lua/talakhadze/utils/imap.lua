local I = {}

function I.imap(lhs, rhs, opt)
    vim.keymap.set("i", lhs, rhs, opt)
end

return I.imap
