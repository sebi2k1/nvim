-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'ts_ls', 'tailwindcss', 'gopls', 'lua_ls', 'rust_analyzer', 'clangd' },
    handlers = {
        function(server_name)
            local lsp_capabilities = require('blink.cmp').get_lsp_capabilities()
            require('lspconfig')[server_name].setup({ capabilities = lsp_capabilities, })
        end,
    },
})
