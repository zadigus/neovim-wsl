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
              notes = "~/Documents/notes",
              cognex = "~/Documents/cognex",
              math = "~/Documents/math",
              srpski = "~/Documents/srpski",
            },
            default_workspace = "cognex",
          },
        },
      },
    },
  },
}
