require('Comment').setup({
    pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
})

require('ts_context_commentstring').setup({
    enable_autocmd = false,
    languages = {
        templ = {
            __default = '// %s',
            component_declaration = '<!-- %s -->',
        }
    }
})
