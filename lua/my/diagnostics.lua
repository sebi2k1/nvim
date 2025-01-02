-- Configure diagnostics to show both virtual text (shortened) and floating windows
vim.diagnostic.config({
    virtual_text = {
        true
    },
    underline = true,      -- Keep underlining problematic code
    signs = true,          -- Show signs in the sign column
    float = {              -- Customize floating window for diagnostics
        border = "rounded",
        source = "always", -- Show the source of the diagnostic
        focusable = false,
    },
})

-- Map <leader>td to show diagnostics in a floating window
vim.keymap.set("n", "<leader>tc", function()
    local opts = {
        focusable = true,
        border = "rounded",
        source = "always",
        prefix = "",
        scope = "line",
    }
    vim.diagnostic.open_float(nil, opts)
end, { desc = "Show diagnostics of cursor in a floating window" })

-- Map <leader>td to show diagnostics in a floating window
vim.keymap.set("n", "<leader>td", function()
    local opts = {
        focusable = true,
        border = "rounded",
        source = "always",
        prefix = function(diagnostic, i, total)
            local line = diagnostic.lnum + 1 -- Convert 0-based to 1-based
            return string.format("[%d/%d] Line %d: ", i, total, line)
        end,
        scope = "buffer",
    }
    vim.diagnostic.open_float(nil, opts)
end, { desc = "Show diagnostics in a floating window" })

