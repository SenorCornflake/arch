return {
    -- Calls `require('slimline').setup({})`
    "sschleemilch/slimline.nvim",
    opts = {
        style = 'fg',
        bold = true,
        configs = {
            path = {
                hl = {
                    primary = 'Label',
                },
            },
            git = {
                hl = {
                    primary = 'Function',
                },
            },
            filetype_lsp = {
                hl = {
                    primary = 'String',
                },
            },
        },
    }
}
