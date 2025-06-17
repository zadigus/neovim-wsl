return {
  {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = true,
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              cognex = "~/Documents/cognex",
            },
            default_workspace = "cognex",
          },
        },
        ["core.keybinds"] = {
          config = {
            default_keybinds = true,
          },
        },
      },
    },
  },
}
