return {
    'voldikss/vim-floaterm',
    lazy = true,
    config = function()
        vim.g.floaterm_opener = "edit"
        vim.g.floaterm_width = 0.95
        vim.g.floaterm_height = 0.85
        vim.g.floaterm_borderchars = "─│─│╭╮╯╰"
        vim.g.floaterm_title = ""
        vim.g.floaterm_rootmarkers = {".root", ".git", "package.json", "Cargo.toml"}
        vim.g.floaterm_width = 0.8
        vim.g.floaterm_height = 0.95
        vim.g.floaterm_position = "center"
    end
}

