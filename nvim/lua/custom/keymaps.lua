vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rn", function()
  vim.lsp.buf.rename()
end, { buffer = bufnr, desc = "LSP Rename" })

vim.keymap.set("t", "<C-f>", "<C-\\><C-n>:only<CR>", { desc = "Terminal fullscreen" })
