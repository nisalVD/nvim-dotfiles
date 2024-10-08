return {
  {
    "LunarVim/bigfile.nvim",
    lazy = false,
    opts = function()
      local set_filetype_bigfile = {
        name = "detect_bigfile",
        opts = { defer = true },
        disable = function()
          vim.api.nvim_set_option_value("filetype", "bigfile", { scope = "local" })
        end,
      }

      local cmp = {
        name = "cmp",
        opts = { defer = true },
        disable = function()
          local ok, cmp = pcall(require, "cmp")
          if ok then
            cmp.setup.buffer({ enabled = false })
          end
        end,
      }

      return {
        filesize = 0.5, -- unit MB
        pattern = { "*" },
        features = {
          "treesitter",
          "lsp",
          "illuminate",
          "syntax",
          "vimopts",
          set_filetype_bigfile,
          cmp,
        },
      }
    end,
  },
}
