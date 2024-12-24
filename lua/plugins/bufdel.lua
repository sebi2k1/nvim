return {
    {
        'ojroques/nvim-bufdel',
        config = function()
            require('bufdel').setup {
                next = 'tabs',
                quit = true, -- quit Neovim when last buffer is closed
            }

            vim.keymap.set("n", "<leader>bd", "<cmd>BufDel<CR>")
        end
    }
}
