return {
  {
    "nvim-mini/mini.surround",
    version = "*", -- или false, если хочешь всегда latest
    config = function()
      require("mini.surround").setup()
    end,
  },
}
