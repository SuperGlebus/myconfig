-- Установка lazy.nvim, если его нет
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.loop.fs_stat(lazypath)) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Настройка lazy.nvim
require("lazy").setup({
  spec = {

    -- 1️⃣ LazyVim core — lazy.nvim сам скачает репозиторий
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    -- 2️⃣ Extras LazyVim
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.ui.mini-starter" },

    -- 3️⃣ Твои плагины
    { import = "plugins" },
  },

  -- Опции по умолчанию
  defaults = {
    lazy = true, -- твои плагины будут лениво грузиться
    version = false, -- всегда использовать последнюю версию
  },

  -- Цветовые схемы для установки, если их нет
  install = {
    colorscheme = { "tokyonight", "habamax" },
  },

  -- Проверка обновлений
  checker = {
    enabled = true,
    notify = true,
  },

  -- Оптимизация rtp
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
        -- если нужно, можно добавить matchit, matchparen, netrwPlugin
      },
    },
  },
})
