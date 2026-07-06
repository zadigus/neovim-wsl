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
        ty = {
          enabled = true,
          settings = {
            ty = {
              diagnosticMode = "workspace",
              completions = {
                autoImport = true,
              },
            },
          },
        },
        ruff = {
          init_options = {
            settings = {
              logLevel = "error",
            },
          },
        },
        pylsp = {
          -- cf. https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md
          enabled = false,
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
