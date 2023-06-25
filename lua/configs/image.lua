local status_ok, hologram= pcall(require, "hologram")

if not status_ok then
    print('Plugin hologram does not installed')
    return
end

hologram.setup({
    auto_display = true
})
