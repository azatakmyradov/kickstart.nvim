-- [[ Basic Autocommands ]]

local group = vim.api.nvim_create_augroup('azatakmyradov.autocmd', { clear = true })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = group,
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- remove trailing space
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  group = group,
  pattern = '*',
  callback = function()
    local position = vim.api.nvim_win_get_cursor(0)
    vim.cmd ':%s/\\s\\+$//e'
    vim.api.nvim_win_set_cursor(0, position)

    -- vim.lsp.buf.format()
  end,
})