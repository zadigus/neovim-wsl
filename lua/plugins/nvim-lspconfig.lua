return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kotlin_language_server = {},
        pyright = {
          mason = false,
          autostart = false,
        },
        pylsp = {
          -- cf. https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = { enabled = true, ignore = { "E501", "W503" } },
                flake8 = { enabled = true, ignore = { "E501", "W503" } },
                mypy = { enabled = true },
                isort = { enabled = true },
                rope_autoimport = { enabled = true },
                rope_completion = { enabled = true },
              },
            },
          },
        },
        cucumber_language_server = {
          settings = {
            cucumber = {
              features = { "**/*.feature" },
              glue = { "**/steps/*.py" },
            },
          },
        },
      },
    },
  },
}
