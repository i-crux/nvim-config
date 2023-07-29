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
remap("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
remap("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

-- 分屏 --
remap("n", "<leader>s", "<C-w>s", opt)
remap("n", "<leader>v", "<C-w>v", opt)
-- vim.keymap.set("n", "<leader>c", "<C-w>c", opt)

-- 回到目录 --
-- vim.keymap.set("n", "<leader>rd", vim.cmd.Ex)

-- 切换buffer --
remap("n", "<C-b>", "<cmd>bNext<CR>")

-- leader y 复制到剪切板 --
remap({ "v", "n" }, "<leader>y", '"+y')
