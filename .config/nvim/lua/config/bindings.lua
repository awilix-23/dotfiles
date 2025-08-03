kset = vim.keymap.set
vim.g.mapleader = ' '

kset('n', ';', ':')
kset('n', '<leader>e', vim.cmd.Ex)
kset('n', '<leader>c', vim.cmd.make)

kset('v', '<leader>y', '"+y')
kset('v', '<leader>p', '"+P')
kset('v', '<leader>x', '"+x')
