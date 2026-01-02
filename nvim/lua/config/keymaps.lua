-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("t", "jj", "<C-\\><C-n>", { desc = "Exit terminal mode" })
local Util = require("lazyvim.util")

-- Keymap для term mode: полный экран терминала
vim.keymap.set("t", "<C-f>", function()
  vim.cmd("stopinsert") -- Выход в normal mode
  vim.cmd("only") -- Закрыть все окна кроме текущего
end, { desc = "Terminal fullscreen" })

-- Или глобальный для открытия нового терминала на весь экран
vim.keymap.set("n", "<leader>tf", function()
  Util.terminal(nil, { cwd = Util.get_cwd() })
  vim.cmd("only") -- Развернуть сразу
end, { desc = "Terminal fullscreen" })
