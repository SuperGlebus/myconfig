-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.bo.expandtab = false -- не заменять табы пробелами
vim.bo.tabstop = 4 -- ширина таба в 4 пробела при отображении
vim.bo.shiftwidth = 4 -- при отступах 4 пробела (1 таб)
vim.bo.softtabstop = 4 -- табы при вводе считаются за 4 пробела
vim.opt.termguicolors = true
vim.opt.background = "dark" -- или "light", если светлая тема

-- word wrap (если хочешь)
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.showbreak = "↪ "

require("onedarkpro").setup({
  options = {
    transparency = true, -- прозрачный фон
  },
  integrations = {
    treesitter = true,
    lsp = true,
  },
})

vim.cmd("colorscheme onedark_dark")
