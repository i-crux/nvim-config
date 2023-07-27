local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {
}

local plugins = {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        dependencies = {
            'nvim-lualine/lualine.nvim',
            'nvim-tree/nvim-web-devicons',
            "utilyre/barbecue.nvim",
            "SmiteshP/nvim-navic",
        },
    },
    { 'akinsho/bufferline.nvim' },
    { "lukas-reineke/indent-blankline.nvim" },
    { "lewis6991/gitsigns.nvim" },
    { "glepnir/dashboard-nvim" },
    { "RRethy/vim-illuminate" },

    -- init.lua:
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                              , branch = '0.1.x',
        dependencies = { 
            'nvim-lua/plenary.nvim',
            -- 选装 --
            { 
                'nvim-telescope/telescope-fzf-native.nvim', 
                build = 'make' 
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/playground",
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        build = ":TSUpdate",
    },

    
    { "folke/persistence.nvim" },
    { "windwp/nvim-autopairs" },
    { "ethanholz/nvim-lastplace" },
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
    },
    { 
        "folke/which-key.nvim", 
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
    { "echasnovski/mini.comment" },
    {'norcalli/nvim-colorizer.lua'},
    {'voldikss/vim-floaterm'},
    { 
        "iamcco/markdown-preview.nvim", 
        build = "cd app && npm install", 
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end, 
        ft = { "markdown" }, 
    },
    { 'lambdalisue/suda.vim' },
}

require("lazy").setup(plugins, opts)
