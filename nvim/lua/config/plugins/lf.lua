vim.g.lf_map_keys = 0

return {
  'ptzz/lf.vim',
  enabled = false,
  config = function()
      local util = require "config.util"
      util.map("n", "<leader>e", ":Lf<CR>")
  end,
  dependencies = {
      'voldikss/vim-floaterm',
  },
  keys = {
    {"<leader>e", ":Lf<CR>", desc = "LF file manager"}
  }
}

