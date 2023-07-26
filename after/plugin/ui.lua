-- vim.cmd('colorscheme rose-pine')

-- color scheme --
function ColorPencils(color)
        color = color or "tokyonight-storm"
        -- color = color or "base16-tender"
        vim.cmd.colorscheme(color)

        if( color == "tokyonight-storm" )
        then
            require("lualine").setup({
                options = {
                    theme = "tokyonight"
                }
            })
            require("barbecue").setup({
                options = {
                    theme = "tokyonight"
                }
            })
        else
            require("lualine").setup()
            require("barbecue").setup()
        end

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
ColorPencils()

-- buffer --
require("bufferline").setup()

require("indent_blankline").setup({
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
})

require('gitsigns').setup()


event = 'VimEnter'
local db = require("dashboard")
db.setup({
  theme = 'hyper',
  config = {
      header = {
          '          ▀████▀▄▄              ▄█ ',
          '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
          '    ▄        █          ▀▀▀▀▄  ▄▀  ',
          '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
          '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
          '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
          '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
          '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
          '   █   █  █      ▄▄           ▄▀   ',
      },
      project = { enable = false },
      footer = { '', '  Have fun with neovim' },
  }
})

require('illuminate').configure()

