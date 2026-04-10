local util = require 'config.util'

return {
  'DrKJeff16/project.nvim',
  cmd = { -- Lazy-load by commands
    'Project',
    'ProjectAdd',
    'ProjectConfig',
    'ProjectDelete',
    'ProjectHistory',
    'ProjectRecents',
    'ProjectRoot',
    'ProjectSession',
    'ProjectSnacks',
  },
  dependencies = { -- OPTIONAL
    'nvim-lua/plenary.nvim',
  },
  opts = {
    different_owners = {
      allow = true,
      notify = false
    },
    patterns = { ---@type string[]
        '.git',
        '.github',
        '_darcs',
        '.hg',
        '.bzr',
        '.svn',
        'Pipfile',
        'pyproject.toml',
        '.pre-commit-config.yaml',
        '.pre-commit-config.yml',
        '.csproj',
        '.sln',
        '.nvim.lua',
        '.root',
    },
    snacks = {
      enabled = true,
      opts = {
        sort = "newest",
        hidden = true,
        title = "Select Project",
        layout = 'select',
      },
    }
  },
  keys = {
    { "<leader>fp", ":ProjectSnacks<CR>", desc = "Projects" },
  }
}
