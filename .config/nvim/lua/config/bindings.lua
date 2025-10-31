kset = vim.keymap.set
vim.g.mapleader = ' '

kset('n', ';', ':')
kset('n', '<leader>f', vim.cmd.Ex)
kset('n', '<leader>c', vim.cmd.make)
kset('n', '<leader>g', vim.cmd.NoNeckPain)
kset('n', '<C-u>', '<C-u>zz')
kset('n', '<C-d>', '<C-d>zz')

kset('v', '<leader>y', '"+y')
kset('v', '<leader>p', '"+P')
kset('v', '<leader>x', '"+x')
