vim.lsp.config['clangd'] = {
  cmd = { 'clangd' },
  filetypes = { 'c', 'h' },
}

vim.lsp.enable('clangd')
