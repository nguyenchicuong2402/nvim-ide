local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
 return
end

toggleterm.setup({
    size = 40,
    open_mapping = [[<C-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_mode = true,
    direction = 'horizontal',
    close_on_exit = true,
    auto_scroll = true,
    shell = vim.o.shell,
    winbar = {
        enabled = false,
        name_formatter = function(term)
            return term.name
        end
  },
})
