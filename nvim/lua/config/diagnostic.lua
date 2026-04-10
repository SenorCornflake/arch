vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '',
      [vim.diagnostic.severity.HINT] = '',
      }
  },
  virtual_text = {
    spacing = 4,
    severity = {
      max = vim.diagnostic.severity.ERROR,
    },
    prefix = function(diagnostic)
      if diagnostic.severity == vim.diagnostic.severity.ERROR then
        return ' '
      elseif diagnostic.severity == vim.diagnostic.severity.WARN then
        return  ' '
      elseif diagnostic.severity == vim.diagnostic.severity.INFO then
        return ' ' 
      else
        return ' '
      end
    end,

  },
  -- virtual_lines = {
  --   severity = {
  --     min = vim.diagnostic.severity.ERROR,
  --   },
  -- },
  severity_sort = true,
})

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
-- 	vim.lsp.diagnostic.on_publish_diagnostics, {
-- 		virtual_text = {
-- 			spacing = 4,
-- 			prefix = "  "
-- 		}
-- 	}
-- )
