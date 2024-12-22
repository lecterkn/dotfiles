-- options
require('configs.options')
-- mapping
require('configs.mapping')
-- themes
local themes = require("configs.themes")

-- packer
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8', requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    --lsp
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use 'simrat39/rust-tools.nvim'

    -- auto pairs
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    -- comment
    use {
        'numToStr/Comment.nvim',
    }

    -- formatter
    use('nvimtools/none-ls.nvim')
    use('MunifTanjim/prettier.nvim')

    -- snippets
    use {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
    }
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })
    use { 'saadparwaiz1/cmp_luasnip' }

    -- nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    }

    -- file buffers
    use 'romgrk/barbar.nvim'

    -- git
    use { "lewis6991/gitsigns.nvim" }

    -- terminal
    use {
        "akinsho/toggleterm.nvim",
        tag = '*',
    }

    -- lua line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- theme
    themes(use)
end)
