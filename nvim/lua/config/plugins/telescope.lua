return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependancies = { 'nvim-lua/plenary.nvim' },
  enabled = false,

  opts = function()
    local util = require "config.util"

    util.map("n", "<leader>ff", ":Telescope find_files<CR>")
    util.map("n", "<leader>fg", ":Telescope live_grep<CR>")
    util.map("n", "<leader>fs", ":Telescope lsp_document_symbols<CR>")
    util.map("n", "<leader>fS", ":Telescope lsp_workspace_symbols<CR>")
    util.map("n", "<leader>fr", ":Telescope lsp_references<CR>")
    util.map("n", "<leader>fe", ":Telescope diagnostics bufnr=0<CR>")
    util.map("n", "<leader>fE", ":Telescope diagnostics<CR>")
    util.map("n", "<leader>fb", ":Telescope buffers<CR>")
    util.map("n", "<leader>f/", ":Telescope current_buffer_fuzzy_find<CR>")
    util.map("n", "<leader>f.", ":Telescope builtin<CR>")
    util.map("n", "<leader>fp", ":Telescope projects<CR>")

    local actions = require "telescope.actions"
    return {
      defaults = {
        layout_config = {
          horizontal = {
            width = 0.79,
            height = 0.93
          }
        },
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            [":q<CR>"] = actions.close,
            ["<M-q>"] = actions.close
          },
          n = {
            [":q<CR>"] = actions.close,
            ["<M-q>"] = actions.close
          }
        }
      },
      pickers = {
        find_files = {
          -- hidden = true,
          -- follow = true,
          find_command = { "rg", "--files", "--hidden", "--follow", "--no-ignore", "-g", "!{.git,node_modules,target}/*" }
        },
        live_grep = {
          vimgrep_arguments = { "rg", "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case", "--hidden", "--no-ignore", "-g", "!{.git,node_modules,target}/*" }
        }
      },
    }
  end
}
