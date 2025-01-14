return {
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<cr>', opts)
            vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
            vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
            vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        end
    },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
}
