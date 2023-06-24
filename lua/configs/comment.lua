require('Comment').setup({
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = '<C-/>',
        block = '<C-/>',
    },
    opleader = {
        line = 'gc',
        block = 'gb',
    },
    extra = {
        above = 'gcO',
        below = 'gco',
        eol = 'gcA',
    },
    mappings = {
        basic = true,
        extra = true,
    },
    pre_hook = nil,
    post_hook = nil,
})
