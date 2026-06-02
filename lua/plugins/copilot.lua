return {
  {
    "github/copilot.vim",
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      "github/copilot.vim",
      "nvim-lua/plenary.nvim",
    },
    opts = {
      model = "claude-opus-4.6",
      window = {
        layout = "vertical",
        width = 0.4,
      },
      auto_follow_cursor = false,
      mappings = {
        submit_prompt = {
          normal = "<CR>",
          insert = "<C-s>",
        },
        reset = {
          normal = "<leader>cR",
        },
      },
    },
    cmd = { "CopilotChat", "CopilotChatOpen", "CopilotChatToggle" },
    keys = {
      -- Toggle chat window (like opencode <leader>ot)
      { "<leader>ct", "<cmd>CopilotChatToggle<cr>", mode = { "n" }, desc = "Toggle Copilot Chat" },

      -- Ask with current buffer/selection as context (like opencode <leader>oa)
      {
        "<leader>cx",
        function()
          local input = vim.fn.input("Ask Copilot: ")
          if input ~= "" then
            require("CopilotChat").ask(input)
          end
        end,
        mode = { "n", "x" },
        desc = "Ask Copilot…",
      },

      -- Quick actions (like opencode <leader>os)
      {
        "<leader>cs",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.snacks").pick(actions.prompt_actions())
        end,
        mode = { "n", "x" },
        desc = "Copilot Chat actions…",
      },

      -- Explain selection/buffer
      { "<leader>ce", "<cmd>CopilotChatExplain<cr>", mode = { "n", "x" }, desc = "Explain code" },

      -- Review selection/buffer
      { "<leader>cr", "<cmd>CopilotChatReview<cr>", mode = { "n", "x" }, desc = "Review code" },

      -- Fix issues in selection/buffer
      { "<leader>cf", "<cmd>CopilotChatFix<cr>", mode = { "n", "x" }, desc = "Fix code" },

      -- Refactor selection/buffer
      { "<leader>cq", "<cmd>CopilotChatRefactor<cr>", mode = { "n", "x" }, desc = "Refactor code" },

      -- Generate tests
      { "<leader>cg", "<cmd>CopilotChatTests<cr>", mode = { "n", "x" }, desc = "Generate tests" },
    },
  },
}
