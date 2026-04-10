return {
  'nvim-mini/mini.surround',
  version = '*',
  opts = {
    mappings = {
      add = 'sa', -- Add surrounding in Normal and Visual modes
      delete = 'ds', -- Delete surrounding
      find = 'fs', -- Find surrounding (to the right)
      find_left = '', -- Find surrounding (to the left)
      highlight = '', -- Highlight surrounding
      replace = 'cs', -- Replace surrounding

      suffix_last = 'l', -- Suffix to search with "prev" method
      suffix_next = 'n', -- Suffix to search with "next" method
    }
  }
}
