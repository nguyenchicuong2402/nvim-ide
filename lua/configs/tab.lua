vim.g.barbar_auto_setup = false

local status_ok, barbar= pcall(require, "barbar")

if not status_ok then
    print('Plugin barbar does not installed')
    return
end

barbar.setup({
    animation = true,
    auto_hide = false,
    tabpages = true,
    clickable = true,
    focus_on_close = 'left',
    hide = {
        extensions = false,
        inactive = false
    },
    highlight_alternate = false,
    highlight_inactive_file_icons = false,
    highlight_visible = true,
    icons = {
        buffer_index = true,
        buffer_number = false,
        button = '',
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
            [vim.diagnostic.severity.WARN] = {enabled = false},
            [vim.diagnostic.severity.INFO] = {enabled = false},
            [vim.diagnostic.severity.HINT] = {enabled = true},
        },
        gitsigns = {
            added = {
                enabled = true,
                icon = '+'
            },
            changed = {
                enabled = true,
                icon = '~'
            },
            deleted = {
                enabled = true,
                icon = '-'
            },
        },
        filetype = {
            custom_colors = false,
            enabled = true,
        },
        separator = {
            left = '▎',
            right = ''
        },
        separator_at_end = true,
        modified = {
            button = '●'
        },
        pinned = {
            button = '',
            filename = true
        },
        preset = 'default',
        alternate = {
            filetype = {
                enabled = false
            }
        },
        current = {
            buffer_index = false
        },
        inactive = {
            button = '×'
        },
        visible = {
            modified = {
                buffer_number = false
            }
        },
    },
    insert_at_end = true,
    insert_at_start = false,
    maximum_padding = 2,
    minimum_padding = 1,
    maximum_length = 30,
    minimum_length = 10,
    semantic_letters = true,
    sidebar_filetypes = {
        NvimTree = true,
        undotree = {
            text = 'undotree'
        },
        ['neo-tree'] = {
            event = 'BufWipeout'
        },
        Outline = {
            event = 'BufWinLeave',
            text = 'symbols-outline'
        },
    },
    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
    no_name_title = nil,
})
