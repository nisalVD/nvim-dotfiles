-- check if windows
local keymap = {
  accept = "Ó",
}

if require("config.utils").is_windows() then
  keymap.accept = "<A-l>"
end

return {
  -- {
  --   "jackMort/ChatGPT.nvim",
  --   event = "VeryLazy",
  --   config = function()
  --     require("chatgpt").setup({
  --       api_key_cmd = "op read op://Personal/chatgpt/api_key --no-newline",
  --     })
  --   end,
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "folke/trouble.nvim",
  --     "nvim-telescope/telescope.nvim",
  --   },
  -- },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "Ó", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-;>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, silent = true })
    end,
  },
}

-- return {}

-- return {
--   {
--     "zbirenbaum/copilot.lua",
--     cmd = "Copilot",
--     event = "InsertEnter",
--     build = ":Copilot auth",
--     opts = {
--       suggestion = {
--         auto_trigger = true,
--         keymap = keymap,
--       },
--     },
--   },
--   {
--     "CopilotC-Nvim/CopilotChat.nvim",
--     opts = {
--       show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
--       debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
--       disable_extra_info = "no", -- Disable extra information (e.g: system prompt) in the response.
--       language = "English", -- Copilot answer language settings when using default prompts. Default language is English.
--       -- proxy = "socks5://127.0.0.1:3000", -- Proxies requests via https or socks.
--       -- temperature = 0.1,
--     },
--     build = function()
--       vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
--     end,
--     event = "VeryLazy",
--     keys = {
--       { "<leader>ccb", ":CopilotChatBuffer ", desc = "CopilotChat - Chat with current buffer" },
--       { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
--       { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
--       {
--         "<leader>ccT",
--         "<cmd>CopilotChatVsplitToggle<cr>",
--         desc = "CopilotChat - Toggle Vsplit", -- Toggle vertical split
--       },
--       {
--         "<leader>ccv",
--         ":CopilotChatVisual ",
--         mode = "x",
--         desc = "CopilotChat - Open in vertical split",
--       },
--       {
--         "<leader>ccx",
--         ":CopilotChatInPlace<cr>",
--         mode = "x",
--         desc = "CopilotChat - Run in-place code",
--       },
--       {
--         "<leader>ccf",
--         "<cmd>CopilotChatFixDiagnostic<cr>", -- Get a fix for the diagnostic message under the cursor.
--         desc = "CopilotChat - Fix diagnostic",
--       },
--       {
--         "<leader>ccr",
--         "<cmd>CopilotChatReset<cr>", -- Reset chat history and clear buffer.
--         desc = "CopilotChat - Reset chat history and clear buffer",
--       },
--     },
--   },
-- }
