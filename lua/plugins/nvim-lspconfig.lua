return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kotlin_language_server = {},
        terraformls = {
          -- Workaround: Neovim 0.12 has an O(n²) regression in vim.str_utfindex()
          -- that causes 100% CPU when processing large semantic-token responses.
          -- terraform-ls sends huge token payloads for files with heredocs.
          -- cf. https://github.com/neovim/neovim/issues/36257
          on_attach = function(client)
            client.server_capabilities.semanticTokensProvider = nil
          end,
        },
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
