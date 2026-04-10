return {
  'akinsho/bufferline.nvim',
  version = "*",
  lazy = false,
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      numbers = "ordinal"
    }
  },
  keys = {
    {"<leader>1", ":BufferLineGoToBuffer 1<CR>", desc = "Bufferline 1"},
    {"<leader>2", ":BufferLineGoToBuffer 2<CR>", desc = "Bufferline 2"},
    {"<leader>3", ":BufferLineGoToBuffer 3<CR>", desc = "Bufferline 3"},
    {"<leader>4", ":BufferLineGoToBuffer 4<CR>", desc = "Bufferline 4"},
    {"<leader>5", ":BufferLineGoToBuffer 5<CR>", desc = "Bufferline 5"},
    {"<leader>6", ":BufferLineGoToBuffer 6<CR>", desc = "Bufferline 6"},
    {"<leader>7", ":BufferLineGoToBuffer 7<CR>", desc = "Bufferline 7"},
    {"<leader>8", ":BufferLineGoToBuffer 8<CR>", desc = "Bufferline 8"},
    {"<leader>9", ":BufferLineGoToBuffer 9<CR>", desc = "Bufferline 9"}
  }
}
