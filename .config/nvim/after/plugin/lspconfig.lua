require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "html", "csslsp", "ts_ls", "lua_ls", "rust_analyzer", "gopls", "zls" },
})

local lspconfig = require("lspconfig")

local handlers = {
    function(server_name) -- default handler (optional)
        lspconfig[server_name].setup {}
    end,
    ["gopls"] = function()
        lspconfig.gopls.setup({
            settings = {
                gopls = {
                    analyses = {
                        unusedparams = true,
                    },
                    staticcheck = true,
                    gofumpt = true,
                },
            },
        })
    end
}

-- alt 1. Either pass handlers when setting up mason-lspconfig:
-- require("mason-lspconfig").setup({ handlers = handlers })

-- alt 2. or call the .setup_handlers() function.
require("mason-lspconfig").setup_handlers(handlers)

local rt = require("rust-tools")
rt.setup({
    server = {
        settings = {
            ["rust-analyzer"] = {
                imports = {
                    granularity = {
                        group = "module",
                    },
                    prefix = "self",
                },
                cargo = {
                    buildScripts = {
                        enable = true,
                    },
                },
                procMacro = {
                    enable = true,
                },
            },
        },
    },
})
