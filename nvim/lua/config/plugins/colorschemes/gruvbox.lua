local util = require"config.util"
local config = util.defaultThemeSettings("gruvbox")

return {
  "ellisonleao/gruvbox.nvim",
  lazy = config.lazy,
  priority = config.priority,
  config = function()
    if not config.lazy then
      util.setTheme()
    end
  end
}
