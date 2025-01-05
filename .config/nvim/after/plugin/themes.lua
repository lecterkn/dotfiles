require("rose-pine").setup({
    -- disable_background = true,
    styles = {
        bold = true,
        italic = false,
        -- transparency = true,
    }
})

require("gruvbox").setup({
    terminal_colors = true,
    -- transparent_mode = true,
})

require("tokyonight").setup({
    -- transparent = true,
    terminal_colors = true,
    styles = {
        -- sidebars = "transparent",
        -- floats = "transparent",
        comments = { italic = false },
        keywords = { italic = false },
    },
})

require("catppuccin").setup({
    flavour = "mocha",
    term_colors = true,
    -- transparent_background = true,
    no_italic = true,
})

-- nord
vim.g.nord_disable_background = true
vim.g.nord_italic = false

local scheme_file = vim.fn.expand('$HOME/.config/nvim/configs/colorscheme')

local function save_colorscheme(scheme)
    local file = io.open(scheme_file, 'w')
    if file then
        file:write(scheme)
        file:close()
    end
end

local function load_last_colorscheme()
    local file = io.open(scheme_file, 'r')
    if file then
        local scheme = file:read('*a')
        file:close()
        scheme = vim.fn.trim(scheme)
        if scheme and #scheme > 0 then
            vim.cmd('colorscheme ' .. scheme)
        end
    end
end

load_last_colorscheme()

vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function()
        local current_scheme = vim.g.colors_name
        if current_scheme then
            save_colorscheme(current_scheme)
        end
    end,
})
