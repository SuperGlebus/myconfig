return {
  -- Main Go plugin (LSP, форматирование, keymaps)
  {
    "ray-x/go.nvim",
    dependencies = { "ray-x/guihua.lua" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
    config = function()
      require("go").setup({
        lsp_cfg = true, -- подключает gopls
        lsp_gofumpt = true, -- форматирование через gofumpt
        lsp_keymaps = true, -- стандартные keymaps
      })
    end,
  },

  -- Neotest + Go adapter
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-go",
      "nvim-neotest/nvim-nio",
    },
    ft = { "go" },
    config = function()
      local neotest = require("neotest")
      neotest.setup({
        adapters = {
          require("neotest-go")({
            experimental = {
              test_table = true, -- ускоряет обнаружение тестов
            },
            recursive_run = true,
          }),
        },
      })

      -- Шорткаты для запуска тестов
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>tt", function()
        neotest.run.run()
      end, opts)
      vim.keymap.set("n", "<leader>tf", function()
        neotest.run.run(vim.fn.expand("%"))
      end, opts)
      vim.keymap.set("n", "<leader>ts", function()
        neotest.run.run({ suite = true })
      end, opts)
      vim.keymap.set("n", "<leader>to", function()
        neotest.output_panel.toggle()
      end, opts)
    end,
  },

  -- DAP для Go
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require("dap-go").setup()
    end,
  },

  -- Treesitter Go парсеры
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "go", "gomod", "gosum", "gowork" })
      opts.highlight = { enable = true }
    end,
  },

  -- Опционально: vim-go для генерации кода и тестов
  {
    "fatih/vim-go",
    ft = { "go" },
    build = ":GoUpdateBinaries",
    config = function()
      vim.g.go_def_mapping_enabled = 0
      vim.g.go_fmt_autosave = 0
      vim.g.go_imports_autosave = 0
      vim.g.go_code_completion_enabled = 0
      vim.g.go_echo_go_info = 0
      vim.g.go_doc_keywordprg_enabled = 0
      vim.g.go_doc_keywordprg = ""
    end,
  },

  -- LSP status
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    config = true,
  },

  -- Trouble для диагностики
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    opts = {
      use_diagnostic_signs = true,
    },
  },
}
