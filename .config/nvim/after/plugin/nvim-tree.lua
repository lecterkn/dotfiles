require("nvim-tree").setup({
    hijack_netrw = false,
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 32,
    },
    renderer = {
        group_empty = true,
        indent_width = 1,
    },
    filters = {
        custom = {
            ".idea",
            ".vscode",
            ".DS_Store",
        },
        exclude = {
            ".env"
        },
    }
})

-- mapping
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
