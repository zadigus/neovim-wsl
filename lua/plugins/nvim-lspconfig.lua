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
        -- for ty, cf. https://www.reddit.com/r/neovim/comments/1kl9qv8/comment/ms0ngxa/?tl=fr&utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
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
