-- <leader> --
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.termguicolors = true

vim.opt.fillchars = { eob = ' ' }

-- lsp format
local patterns = {
    "*.json",
    "*.ts",
    "*.tsx",
    "*.js",
    "*.html",
    "*.css",
    "*.svelte",
    "*.lua",
    "*.go",
    "*.rs",
}

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = patterns,
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})
