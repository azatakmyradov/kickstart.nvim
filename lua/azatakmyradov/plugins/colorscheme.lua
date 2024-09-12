return { -- You can easily change to a different colorscheme.
  'catppuccin/nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
    }
  end,
  init = function()
    vim.cmd.colorscheme 'catppuccin'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
