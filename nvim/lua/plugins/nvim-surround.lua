-- lua/plugins/surround-maps.lua
return {
  {
    "kylechui/nvim-surround",
    opts = {},
    config = function(_, opts)
      require("nvim-surround").setup(opts)

      -- Визуальный режим: S" оборачивает в кавычки
      vim.keymap.set("v", '"', 'c"<C-r>""<Esc>', { noremap = true, silent = true })
      vim.keymap.set("v", "'", "c'<C-r>\"'<Esc>", { noremap = true, silent = true })
    end,
  },
}
