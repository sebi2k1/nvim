vim.opt.guicursor = {
    "v-r-c:block",          -- Normal, Visual, and Command-line mode use a block cursor
    "i:block-CursorOrange", -- Insert mode uses a vertical cursor with the "CursorOrange" highlight group
    "n-cr:hor20",           -- Replace mode and Command-line replace mode use a horizontal cursor
}

vim.cmd("highlight CursorOrange guifg=NONE guibg=orange")

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
