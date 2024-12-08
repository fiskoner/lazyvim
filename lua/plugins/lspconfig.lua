return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        on_attach = function(client, bufnr)
          -- Enable completion triggered by <c-x><c-o>
          vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
          -- Log the capabilities of the client when it attaches
          print("Pyright capabilities: " .. vim.inspect(client.server_capabilities))
        end,
        capabilities = function()
          local capabilities = vim.lsp.protocol.make_client_capabilities()
          capabilities.textDocument.codeAction = {
            dynamicRegistration = true,
            codeActionLiteralSupport = {
              codeActionKind = {
                valueSet = {
                  "quickfix",
                  "refactor",
                  "refactor.extract",
                  "refactor.inline",
                  "refactor.rewrite",
                  "source",
                  "source.organizeImports",
                }
              }
            }
          }
          return capabilities
        end,
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace",
              indexing = true,
              autoSearchPaths = true,
            },
          },
        },
      }
    }
  }
}
