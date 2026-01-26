vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth=2
vim.o.expandtab = true
vim.g.mapleader = " "


vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')

vim.keymap.set('n', '<leader>q', ':quit<CR>')

require("config.lazy")

