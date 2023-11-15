return {
  "hinell/lsp-timeout.nvim",
  event = "LspAttach",
  dependencies = { "neovim/nvim-lspconfig" },
  init = function()
    vim.g["lsp-timeout-config"] = {
      startTimeout = 1000 * 1, -- ms before restart
    }
  end,
}
