local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
 return
end

toggleterm.setup({
    open_mapping = [[<C-\>]],
    size = 120,
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_mode = true,
    direction = 'float',
    close_on_exit = true,
    auto_scroll = true,
    shell = vim.o.shell,
    winbar = {
        enabled = false,
        name_formatter = function(term)
            return term.name
        end
    },
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
})
