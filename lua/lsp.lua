local mason_ok, mason= pcall(require, 'mason')
local mason_lsp_ok, mason_lsp = pcall(require, 'mason-lspconfig')

if not mason_ok or not mason_lsp_ok then
    print('Plugin mason and mason-lspconfig does not installed')
    return
end


mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lsp.setup({
    ensure_installed = {
        'lua_ls', 'bashls', 'cssls', 'cssmodules_ls',
        'dockerls', 'ember', 'emmet_ls', 'eslint', 'graphql', 'groovyls', 'helm_ls',
        'jsonls', 'tailwindcss', 'tsserver', 'vimls', 'yamlls'
    },
})
