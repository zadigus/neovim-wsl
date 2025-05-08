return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          mason = false,
          autostart = false,
        },
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                flake8 = { enabled = true },
                mypy = { enabled = true },
                isort = { enabled = true },
                rope_autoimport = { enabled = true },
                rope_completion = { enabled = true },
              },
            },
          },
        },
      },
    },
  },
}
