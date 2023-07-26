-- 拷贝后高亮
vim.api.nvim_create_autocmd( {"TextYankPost"}, {
        pattern = { "*" },
        callback = function()
                vim.highlight.on_yank({
                        timeout = 500,
                })
        end,
})
