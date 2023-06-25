local status_ok, lsp_colors= pcall(require, 'lsp-colors')

if not status_ok then
    print('Plugin lsp-colors does not installed')
    return
end

lsp_colors.setup({
  Error = '#F44747',
  Warning = '#FF8800',
  Hint = '#4FC1FF',
  Information = '#FFCC66'
})
