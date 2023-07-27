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
    install = {
        -- try to load one of these colorschemes when starting an installation during startup
        colorscheme = { 'rose-pine/neovim', name = 'rose-pine' },
    },
}

require("lazy").setup("plugins", opts)

-- local plugins = {
--     -- init.lua:
--     {
--         'nvim-telescope/telescope.nvim',
--         tag = '0.1.2',
--         -- or                              , branch = '0.1.x',
--         dependencies = {
--             'nvim-lua/plenary.nvim',
--             -- 选装 --
--             {
--                 'nvim-telescope/telescope-fzf-native.nvim',
--                 build = 'make'
--             },
--         },
--     },
-- 
--     {
--         "nvim-treesitter/nvim-treesitter",
--         dependencies = {
--             "nvim-treesitter/playground",
--             "nvim-treesitter/nvim-treesitter-textobjects",
--         },
--         build = ":TSUpdate",
--     },
-- 
-- 
--     {
--         "neovim/nvim-lspconfig",
--         dependencies = {
--             "williamboman/mason.nvim",
--             "williamboman/mason-lspconfig",
--             "folke/neoconf.nvim",
--             "folke/neodev.nvim",
--             {
--                 "j-hui/fidget.nvim",
--                 tag = "legacy",
--             },
--             "nvimdev/lspsaga.nvim",
--         },
--     }
-- }

