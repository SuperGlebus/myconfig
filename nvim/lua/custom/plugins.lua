return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact" },
          settings = {
            completions = {
              completeFunctionCalls = true,
            },
          },
        },
        gopls = {},
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = { allFeatures = true },
              checkOnSave = { command = "clippy" },
            },
          },
        },
      },
    },
  },
}
