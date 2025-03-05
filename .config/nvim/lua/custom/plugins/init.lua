-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
return {
    { 'echasnovski/mini.nvim', version = '*' },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "nvimdev/guard.nvim",
        dependencies = {
            "nvimdev/guard-collection",
        },
        config = function()
            local ft = require('guard.filetype')
            ft('typescript,javascript,typescriptreact'):fmt('prettier')
            ft('python'):fmt('black')

            vim.g.guard_config = {
                fmt_on_save = true,
                lsp_as_default_formatter = true,
            }
        end,
    }
}
