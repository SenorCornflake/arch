vim.lsp.enable("phpactor")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("lua_ls")
vim.lsp.enable("html")
vim.lsp.enable("cssls")

vim.lsp.config('lua_ls', {
  root_markers = { '.git', '.root' },
  settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"}
      }
    }
  }
})

vim.lsp.config("phpactor", {
  root_markers = { '.git', 'composer.json', '.phpactor.json', '.phpactor.yml', '.root' },
})

vim.lsp.config("html", {
  root_markers = { 'package.json', '.git', '.root' },
})

vim.lsp.config("cssls", {
  root_markers = { 'package.json', '.git', '.root' },
})
