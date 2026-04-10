local util = {}

util.map = function(mode, left, right, opts)
  opts = opts or { noremap = true, silent = true }

  vim.keymap.set(mode, left, right, opts)
end

-- If the theme loads up on start then don't make it lazy
util.defaultThemeSettings = function(theme)
  if string.find(THEME, theme) then
    return {
      priority = 1000,
      lazy = false
    }
  end

  return {
    priority = 50,
    lazy = true
  }
end

util.setTheme = function()
  vim.cmd ("colorscheme " .. THEME)

  if CORRESPOND_TO_SYSTEM then
    local handle = io.popen("dbus-send --session --print-reply=literal --dest=org.freedesktop.portal.Desktop /org/freedesktop/portal/desktop org.freedesktop.portal.Settings.Read string:org.freedesktop.appearance string:color-scheme | tr -s ' ' | cut -d ' ' -f 5")
    local result = handle:read("*a")
    handle:close()
    result = string.gsub(result, "%s+$", "")


    if result == "2" then
      vim.opt.background = "light"
    else
      vim.opt.background = "dark"
    end
  end
end

return util
