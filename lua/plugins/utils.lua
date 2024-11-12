return {
    {
        "folke/persistence.nvim",
         keys = {
            { "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]] },
            { "<leader>ql", [[<cmd>lua require("persistence").load({ last = true})<cr>]] },
            { "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]] },
        },
        config = true,
    },
    {
        "windwp/nvim-autopairs",
        opts = {
            enable_check_bracket_line = false,
        },
    },
    {
        "ethanholz/nvim-lastplace",
        event = "VeryLazy",
        config = true,
    },
    -- {
    --     "ludovicchabant/vim-gutentags",
    --     -- event = "VeryLazy",
    --     -- config = true,
    -- },
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Open the neo-tree", mode = { "n", "v" } }
        },
        config = true,
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = true,
    },
    {
        "echasnovski/mini.comment",
        event = "VeryLazy",
        config = true,
    },
    {
        "norcalli/nvim-colorizer.lua",
        event = "VeryLazy",
        config = true,
    },
    {
        "voldikss/vim-floaterm",
        keys = {
            { "<leader>t", "<cmd>FloatermToggle<CR>", desc = "Open the terminal", mode = { "n", "t" } }
        },
    },
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm install",
        event = "VeryLazy",
        config = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
        keys = {
            { "<leader>p", "<cmd>MarkdownPreviewToggle<CR>", desc = "preview markdown", mode = { "n"} }
        },
    },
    {
        "lambdalisue/suda.vim",
        event = "VeryLazy",
        config = function()
            vim.api.nvim_create_user_command('W',
                function(opts)
                    vim.cmd("SudaWrite")
                end,
                { nargs = 0 })

            vim.api.nvim_create_user_command('R',
                function(opts)
                    vim.cmd("SudaRead")
                end,
                { nargs = 0 })
        end,
    },
}
