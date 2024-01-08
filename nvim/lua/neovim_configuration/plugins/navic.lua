local navic = require "nvim-navic"

navic.setup {
  highlight = false,
  lsp = {
    preference = {
      "intelephense",
      "html"
    },
    auto_attach = true
  }
}
