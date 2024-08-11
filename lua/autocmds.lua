local autocmd = vim.api.nvim_create_autocmd

-- Autoclose lsp quickfix list when select item with <e>
autocmd('FileType', {
  pattern = 'qf',
  callback = function()
    local bufnr = vim.fn.bufnr('%')
    vim.keymap.set("n", "e", function()
      vim.api.nvim_command([[execute "normal! \<cr>"]])
      vim.api.nvim_command(bufnr .. 'bd')
    end, { buffer = bufnr })
  end,
})
