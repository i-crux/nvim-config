local option = vim.opt
local buffer = vim.b
local global = vim.g

-- Globol Settings --
-- option.clipboard = "unnamed"
-- option.colorcolumn = "80"
-- option.scrolloff = 8
-- option.isfname:append("@-@")

option.guicursor = "i:ver50-ncvCursor,v:bloch-vCursor"
option.showmode = false
option.backspace = { "indent", "eol", "start" }
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true
option.relativenumber = true
option.wildmenu = true
option.hlsearch = false
vim.opt.incsearch = true
option.ignorecase = true
option.smartcase = true
option.completeopt = { "menu", "menuone" }
option.cursorline = true
option.termguicolors = true
option.signcolumn = "yes"
option.autoread = true
option.title = true
option.swapfile = false
option.backup = false
option.updatetime = 50
option.mouse = ""
option.undofile = true
option.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
option.exrc = true
option.wrap = true
option.splitright = true

-- Buffer setting --
buffer.fileenconding = "utf-8"

-- leader key setting --
global.mapleader = ","

