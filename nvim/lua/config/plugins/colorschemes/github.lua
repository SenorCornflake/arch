local util = require"config.util"
local config = util.defaultThemeSettings("github")

return {
  "projekt0n/github-nvim-theme",
  lazy = config.lazy,
  priority = config.priority,
  config = function()
    if not config.lazy then
      util.setTheme()
    end
  end
}
