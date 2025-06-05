-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<ESC>", { silent = true })

-- maven / teamcity
vim.keymap.set("n", "<leader>ctg", function()
  local root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  if vim.v.shell_error ~= 0 then
    print("Not inside a Git repository")
    return
  end

  local teamcity_path = root .. "/.teamcity"
  if vim.fn.isdirectory(teamcity_path) == 0 then
    print(".teamcity directory not found in the Git root")
    return
  end

  require("lazy.util").float_cmd(
    { "mvn", "-f", ".teamcity", "teamcity-configs:generate" },
    { cwd = vim.fn.expand(root) }
  )
end, { desc = "teamcity generate" })

vim.keymap.set("n", "<leader>ctc", function()
  local root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  if vim.v.shell_error ~= 0 then
    print("Not inside a Git repository")
    return
  end

  local teamcity_path = root .. "/.teamcity"
  if vim.fn.isdirectory(teamcity_path) == 0 then
    print(".teamcity directory not found in the Git root")
    return
  end

  require("lazy.util").float_cmd({ "mvn", "-f", ".teamcity", "kotlin:compile" }, { cwd = vim.fn.expand(root) })
end, { desc = "teamcity compile" })

-- neorg
vim.keymap.set("n", "<LocalLeader><CR>", "<Plug>(neorg.esupports.hop.hop-link)", { desc = "hop link" })
