local status_ok, git_conflict= pcall(require, "git-conflict")

if not status_ok then
    print('Plugin git-conflict does not installed')
    return
end

git_conflict.setup({
    default_mappings = true,
    default_commands = true,
    disable_diagnostics = false,
    highlights = {
        incoming = 'DiffAdd',
        current = 'DiffText',
    }
})
