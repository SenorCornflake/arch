local util = require "config.util"
local config = util.defaultThemeSettings("catppuccin")

return {
  "catppuccin/nvim",
  lazy = config.lazy,
  priority = config.priority,
  config = function()
    if not config.lazy then
      util.setTheme()
    end
  end
}
