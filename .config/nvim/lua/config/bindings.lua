kset = vim.keymap.set
vim.g.mapleader = ' '

kset('n', ';', ':')
kset('n', '<leader>e', vim.cmd.Ex)
kset('v', '<leader>y', '"+y')
kset('v', '<leader>p', '"+P')
kset('v', '<leader>x', '"+x')
