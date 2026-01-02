-- plugins/neocodeium.lua
return {
  "monkoose/neocodeium",
  event = "VeryLazy",
  config = function()
    local neocodeium = require("neocodeium")

    -- Настройка плагина (можно оставить пустой или добавить свои опции)
    neocodeium.setup()

    -- Привязка комбинации Alt+Tab в режиме вставки
    vim.keymap.set("i", "<A-Tab>", neocodeium.accept, { noremap = true, silent = true })
  end,
}
