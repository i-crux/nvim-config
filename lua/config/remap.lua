local opt1 = {noremap = true, silent = true}
local opt2 = {noremap = true}
local opt3 = {noremap = true, silent = true}
local remap = vim.keymap.set
 
-- disable using left right up down arrow key --
remap({ "n", "i", "v" }, "<Left>", "<Nop>", opt1)
remap({ "n", "i", "v" }, "<Right>", "<Nop>", opt1)
remap({ "n", "i", "v" }, "<Up>", "<Nop>", opt1)
remap({ "n", "i", "v" }, "<Down>", "<Nop>", opt1)

-- 上下移动 --
vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

-- 分屏 --
vim.keymap.set("n", "<leader>s", "<C-w>s", opt)
vim.keymap.set("n", "<leader>v", "<C-w>v", opt)
-- vim.keymap.set("n", "<leader>c", "<C-w>c", opt)

-- 回到目录 --
-- vim.keymap.set("n", "<leader>rd", vim.cmd.Ex)

