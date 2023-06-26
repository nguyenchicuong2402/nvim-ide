local status_ok, comment= pcall(require, "Comment")

if not status_ok then
    print('Plugin comment does not installed')
    return
end

comment.setup({
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = '<C-/>',
        --block = '<C-//>',
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
