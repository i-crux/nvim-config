return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        dependencies = {
            "nvim-lualine/lualine.nvim",
            "nvim-tree/nvim-web-devicons",
            "utilyre/barbecue.nvim",
            "SmiteshP/nvim-navic",
            "folke/tokyonight.nvim",
        },
        config = function()
            function ColorPencils(color)
                color = color or "rose-pine"
                -- color = color or "base16-tender"
                vim.cmd.colorscheme(color)

                vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
                vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            end

            -- ColorPencils('tokyonight-storm')
            ColorPencils()
            require('lualine').setup({
                -- options = {
                --     theme = 'tokyonight'
                -- },
            })
            require('barbecue').setup {
                -- theme = 'tokyonight',
            }
        end
    },
    {
        "akinsho/bufferline.nvim",
        -- event = "VeryLazy",
        config = true,
    },
    -- {
    --     "lukas-reineke/indent-blankline.nvim",
    --     config = true,
    -- },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = true,
    },
    {
        'glepnir/dashboard-nvim',
        -- event = 'VimEnter',
        -- config = function()
        --     require('dashboard').setup {
        --         -- config
        --     }
        -- end,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            event = 'VimEnter'
            local db = require("dashboard")
            db.setup({
                theme = 'hyper',
                config = {
                    header = {
                        '          ▀████▀▄▄              ▄█ ',
                        '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
                        '    ▄        █          ▀▀▀▀▄  ▄▀  ',
                        '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
                        '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
                        '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
                        '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
                        '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
                        '   █   █  █      ▄▄           ▄▀   ',
                    },
                    project = { enable = false },
                    footer = { '', '  Have fun with neovim' },
                }
            })
        end
    },
    {
        "RRethy/vim-illuminate",
        event = "VeryLazy",
        config = function()
            require('illuminate').configure()
        end
    },
}
