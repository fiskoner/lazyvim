return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        capabilities = {
          codeActionProvider = true,
          workspaceSymbolProvider = true
        },
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace",
              indexing = true,
              importFormat = "absolute",
            },
          },
        },
      },
    },
  },
}
