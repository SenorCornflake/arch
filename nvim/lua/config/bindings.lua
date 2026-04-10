local util = require "config.util"

vim.g.mapleader = " "

-- Easy normal mode
util.map("i", "kj", "<Esc>")

-- Easy writing
util.map("n", "<leader>w", ":w<CR>")

-- Cycle through popup menu
util.map('i', '<Tab>'  , 'pumvisible() ? "<C-n>" : "<Tab>"'  , { expr = true, noremap = true, silent = true })
util.map('i', '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', { expr = true, noremap = true, silent = true })

-- Undo points
util.map("i", ",", ",<c-g>u")
util.map("i", ".", ".<c-g>u")
util.map("i", ";", ";<c-g>u")
util.map("i", "!", "!<c-g>u")
util.map("i", "?", "?<c-g>u")
util.map("i", "=", "=<c-g>u")

-- Black hole deleting
util.map("n", "x", "\"_d")
util.map("n", "xx", "\"_dd")
util.map("n", "X", "\"_D")
util.map("x", "X", "\"_d")
util.map("x", "x", "\"_d")

-- When pasting over visual selection, restore the clipboard as doing this will place the overwritten text into the register
util.map("x", "p", 'p:let @+=@0<CR>:let @"=@0<CR>')

-- Split management
util.map("n", "<C-h>", "<C-w>h")
util.map("n", "<C-j>", "<C-w>j")
util.map("n", "<C-k>", "<C-w>k")
util.map("n", "<C-l>", "<C-w>l")
-- See winshift plugin

util.map("n", "<M-h>", "<C-w>10<")
util.map("n", "<M-j>", "<C-w>10-")
util.map("n", "<M-k>", "<C-w>10+")
util.map("n", "<M-l>", "<C-w>10>")
util.map("n", "<M-i>", "<C-w>=")

util.map("n", "<leader>q", "<C-w>q")

-- Keep searches centered
util.map("n", "n", "nzzzv")
util.map("n", "N", "Nzzzv")

-- Correct indent while pasting
util.map("n", "p", "p=`]")

-- LSP
util.map('n', '<leader>ld', ':lua vim.lsp.buf.definition()<cr>')
util.map('n', '<leader>lD', ':lua vim.lsp.buf.declaration()<cr>')
util.map('n', '<leader>li', ':lua vim.lsp.buf.implementation()<cr>')
util.map('n', '<leader>ls', ':lua vim.lsp.buf.signature_help()<cr>')
util.map('n', '<leader>lk', ':lua vim.lsp.buf.hover()<cr>')
util.map('n', '<leader>lr', ':lua vim.lsp.buf.rename()<cr>')
util.map('n', '<leader>lR', ':lua vim.lsp.buf.references()<cr>')
util.map('n', '<leader>le', ':lua vim.diagnostic.open_float()<cr>')
util.map('n', '<leader>lf', ':lua vim.lsp.buf.format()<cr>')

-- File manager
-- Refer to LF config



-- Git
util.map("n", "<leader>gc", ":Git commit<CR>")
util.map("n", "<leader>ga", ":Git add ", { noremap = true, silent = false })
util.map("n", "<leader>gp", ":Git push<CR>")
util.map("n", "<leader>gP", ":Git pull<CR>")
util.map("n", "<leader>gb", ":Git blame<CR>")
util.map("n", "<leader>gl", ":Git log<CR>")

-- Symbols outline
-- See outline plugin

util.map("n", "<leader>t", ":Neotree toggle<cr>")
util.map("n", "<leader>T", ":Neotree close<cr>")

-- Comments -- Refer to kommentary.lua

-- Visual
util.map("v", ">", ">gv")
util.map("v", "<", "<gv")

-- Dial
util.map("n", "<C-a>", "<Plug>(dial-increment)")
util.map("n", "<C-x>", "<Plug>(dial-decrement)")
util.map("x", "<C-a>", "<Plug>(dial-increment)")
util.map("x", "<C-x>", "<Plug>(dial-decrement)")
util.map("x", "g<C-a>", "<Plug>(dial-increment-additional)")
util.map("x", "g<C-x>", "<Plug>(dial-decrement-additional)")

-- Commands
vim.cmd "command! AdaptSystem lua require('neovim_configuration.util').adapt_system()"
vim.cmd "command! SynStack lua require('neovim_configuration.util').synstack()"


