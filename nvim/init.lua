-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")

vim.bo.expandtab = false -- не заменять табы пробелами
vim.bo.tabstop = 4 -- ширина таба в 4 пробела при отображении
vim.bo.shiftwidth = 4 -- при отступах 4 пробела (1 таб)
vim.bo.softtabstop = 4 -- табы при вводе считаются за 4 пробела
