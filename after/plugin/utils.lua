require("persistence").setup()
vim.keymap.set("n","<leader>qs", [[<cmd>lua require("persistence").load()<cr>]])
vim.keymap.set("n","<leader>ql", [[<cmd>lua require("persistence").load({ last = true})<cr>]])
vim.keymap.set("n","<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]])

require("nvim-autopairs").setup({
    enable_check_bracket_line = false,
})

require('nvim-lastplace').setup({
    lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
    lastplace_open_folds = true
})

require("neo-tree").setup()
vim.keymap.set({"n", "v"},"<leader>e",[[<cmd>Neotree toggle<CR>]])

require("which-key").setup({
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
})

require('mini.comment').setup()

require('colorizer').setup()
-- floaterm
vim.keymap.set('n', '<leader>t', vim.cmd.FloatermToggle)
vim.keymap.set('t', '<leader>t', vim.cmd.FloatermToggle)
-- markdown preview
vim.keymap.set('n', '<leader>p', vim.cmd.MarkdownPreviewToggle)
vim.keymap.set('i', '<leader>p', vim.cmd.MarkdownPreviewToggle)
-- for suda
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


