local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
  {
    "Mofiqul/vscode.nvim",
  },

  {
    "goolord/alpha-nvim",
    config = function()
      require "neovim_configuration.plugins.alpha"
    end
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require "neovim_configuration.plugins.autopairs"
    end
  },
  {
    "akinsho/bufferline.nvim",
    config = function()
      require "neovim_configuration.plugins.bufferline"
    end
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require "neovim_configuration.plugins.cmp"
    end,
    dependencies = {
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
    }
  },
  {
    "mattn/emmet-vim",
    config = function()
      require "neovim_configuration.plugins.emmet"
    end
  },
  { "monaqa/dial.nvim" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require "neovim_configuration.plugins.neo-tree"
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim"
    }
  },
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require "neovim_configuration.plugins.scrollbar"
    end
  },
  {
    "svban/YankAssassin.vim",
    config = function()
      require "neovim_configuration.plugins.yankassassin"
    end
  },
  { "RRethy/nvim-base16" },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "neovim_configuration.plugins.treesitter"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-refactor",
    config = function()
      require "neovim_configuration.plugins.nvim-treesitter-refactor"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    config = function()
      require "neovim_configuration.plugins.nvim-treesitter-textobjects"
    end
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require "neovim_configuration.plugins.nvim-ts-autotag"
    end
  },

  {
    "freddiehaddad/feline.nvim",
    enabled = true,
    config = function()
      require "neovim_configuration.plugins.feline"
    end,
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "neovim_configuration.plugins.gitsigns"
    end
  },
  {
    "phaazon/hop.nvim",
    config = function()
      require "neovim_configuration.plugins.hop"
    end
  },
  {
    "b3nj5m1n/kommentary",
    config = function()
      require "neovim_configuration.plugins.kommentary"
    end
  },
  {
    "onsails/lspkind.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require "neovim_configuration.plugins.luasnip"
    end,
    dependencies = { "rafamadriz/friendly-snippets" }
  },
  { "windwp/nvim-autopairs" },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "neovim_configuration.plugins.lspconfig"
    end,
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
    }
  },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require "neovim_configuration.plugins.project"
    end
  },
  {
    "kylechui/nvim-surround",
    enabled = false,
    config = function()
      require "neovim_configuration.plugins.surround"
    end
  },
  { "wellle/targets.vim" },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "neovim_configuration.plugins.telescope"
    end
  },
  {
    "voldikss/vim-floaterm",
    config = function()
      require "neovim_configuration.plugins.floaterm"
    end
  },
  {
    "ptzz/lf.vim",
    config = function()
      require "neovim_configuration.plugins.lf"
    end,
    dependencies = {
      "voldikss/vim-floaterm"
    }
  },
  { "tpope/vim-fugitive" },
  {
    "RRethy/vim-hexokinase",
    config = function()
      require "neovim_configuration.plugins.hexokinase"
    end,
    build = "make hexokinase"
  },
  { "dstein64/vim-startuptime" },
  {
    "folke/which-key.nvim",
    config = function()
      require "neovim_configuration.plugins.which-key"
    end
  },
  {
    "sindrets/winshift.nvim",
    config = function()
      require "neovim_configuration.plugins.winshift"
    end
  },
  {
    "rktjmp/fwatch.nvim",
    config = function()
      require "neovim_configuration.plugins.fwatch"
    end
  },
  {
    "SmiteshP/nvim-navic",
    config = function()
      require "neovim_configuration.plugins.navic"
    end
  },
}

require("lazy").setup(plugins, {})
