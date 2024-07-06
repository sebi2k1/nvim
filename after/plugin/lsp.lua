local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })

    vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<cr>', opts)
    vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'tsserver', 'tailwindcss', 'gopls', 'lua_ls', 'rust_analyzer', 'clangd' },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
    },
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    mapping = {
        ['<enter>'] = cmp.mapping.confirm({ select = false }),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
        ['<C-p>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item({ behavior = 'insert' })
            else
                cmp.complete()
            end
        end),
        ['<C-n>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_next_item({ behavior = 'insert' })
            else
                cmp.complete()
            end
        end),
    },
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})
