return {
    {
        'mg979/vim-visual-multi',
        lazy = false,
        init = function()
            vim.g.VM_maps = {
                ['Find Under'] = '<C-n>',
                ['Find Subword Under'] = '<C-n>',
                ['Select All'] = '<C-n>',
                ['Add Cursor Down'] = "<C-j>",
                ['Add Cursor Up'] = "<C-k>",
            }
        end,
    }
}
