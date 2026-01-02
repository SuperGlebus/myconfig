return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false, -- загружается сразу
    priority = 1000,
    opts = {
      options = {
        transparency = true, -- прозрачный фон
      },
      integrations = {
        treesitter = true,
        lsp = true,
      },
    },
    config = function(_, opts)
      require("onedarkpro").setup(opts)
      vim.cmd("colorscheme onedark_dark")

      -- убрать фон у floating windows
      vim.cmd([[
        hi Normal guibg=none ctermbg=none
        hi NormalNC guibg=none ctermbg=none
        hi NormalFloat guibg=none ctermbg=none
        hi FloatBorder guibg=none ctermbg=none
        hi SignColumn guibg=none ctermbg=none
      ]])
    end,
  },
}
