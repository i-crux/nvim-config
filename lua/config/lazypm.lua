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


}

require("lazy").setup(plugins, opts)
