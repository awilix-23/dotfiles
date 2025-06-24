vim.lsp.enable('python-lsp-server')

vim.lsp.config['python-lsp-server'] = {
  cmd = {'pylsp'},
  filetypes = {'python'},
  root_markers = {'.py'},
  settings = {}
}
