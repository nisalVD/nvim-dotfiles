return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     setup = {
  --       -- disable tsserver getting initialized by lsp
  --       tsserver = function()
  --         return true
  --       end,
  --     },
  --   },
  -- },
  -- {
  --   "pmizio/typescript-tools.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --   ft = { "typescriptreact", "typescript", "javascript", "javascriptreact" },
  --   config = function()
  --     require("typescript-tools").setup({
  --       on_attach = function(client, buffer)
  --         vim.keymap.set("n", "<leader>co", "TSToolsOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
  --       end,
  --     })
  --   end,
  -- },
}