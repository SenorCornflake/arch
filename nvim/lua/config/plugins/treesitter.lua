
return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  config = function()
    -- local ts = require("nvim-treesitter")
    -- local augroup = vim.api.nvim_create_augroup("myconfig.treesitter", { clear = true })

    -- vim.api.nvim_create_autocmd("FileType", {
    --   group = augroup,
    --   pattern = { "*" },
    --   callback = function(event)
    --     local filetype = event.match
    --     local lang = vim.treesitter.language.get_lang(filetype)
    --     local is_installed, error = vim.treesitter.language.add(lang)

    --     if not is_installed then
    --       local available_langs = ts.get_available()
    --       local is_available = vim.tbl_contains(available_langs, lang)

    --       if is_available then
    --         vim.notify("Installing treesitter parser for " .. lang, vim.log.levels.INFO)
    --         ts.install({ lang }):wait(30 * 1000)
    --       end
    --     end

    --     local ok, _ = pcall(vim.treesitter.start, event.buf, lang)
    --     if not ok then return end

    --     vim.treesitter.start()
    --     vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    --     vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    --   end
    -- })
    --local treesitter = require "nvim-treesitter.configs"

    -- treesitter.install {
    --   "php",
    --   "php_only",
    --   "css",
    --   'html',
    --   'html_tags',
    --   'rust',
    --   'python',
    --   'javascript',
    --   'lua'
    -- }

    -- local filetypes = { "html", "css", "lua", "php", "python", "rust", "javascript" }

    -- for _, ft in ipairs(filetypes) do
    --   vim.api.nvim_create_autocmd('FileType', {
    --     pattern = { ft },
    --     callback = function()
    --       vim.treesitter.start()
    --       vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    --       vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    --     end,
    --   })
    -- end

    -- treesitter.setup {
    --   ensure_installed = "all",
    --   auto_install = true,
    --   highlight = { enable = true },
    --   indent = { enable = true },
    --   -- Cos some issues here
    --   ignore_install = { "ipkg" }
    -- }

    local treesitter = require('nvim-treesitter')
    treesitter.install {
      "php",
      "php_only",
      "css",
      'html',
      'html_tags',
      'rust',
      'python',
      'javascript',
      'lua'
    }
    local filetypes = { "html", "css", "lua", "php", "python", "rust", "javascript" }

    for _, ft in ipairs(filetypes) do
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { ft },
        callback = function()
          vim.treesitter.start()
          vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          vim.wo[0][0].foldmethod = 'expr'
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end

    -- treesitter.setup {
    --   ensure_installed = "all",
    --   auto_install = true,
    --   highlight = { enable = true },
    --   indent = { enable = true },
    --   -- Cos some issues here
    --   ignore_install = { "ipkg" }
    -- }

  end
}
