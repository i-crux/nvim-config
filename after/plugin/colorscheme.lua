-- vim.cmd('colorscheme rose-pine')

function ColorPencils(color)
        color = color or "tokyonight-storm"
        -- color = color or "base16-tender"
        vim.cmd.colorscheme(color)

        -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorPencils()

