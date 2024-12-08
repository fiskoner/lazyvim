return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        capabilities = vim.tbl_deep_extend(
          "force",
          {},
          vim.lsp.protocol.make_client_capabilities(),
          require("cmp_nvim_lsp").default_capabilities(),
          {
            workspace = {
              symbol = {
                supportedKinds = {
                  "File", "Module", "Namespace", "Package", "Class", "Method",
                  "Property", "Field", "Constructor", "Enum", "Interface",
                  "Function", "Variable", "Constant", "String", "Number",
                  "Boolean", "Array", "Object", "Key", "Null", "EnumMember",
                  "Struct", "Event", "Operator", "TypeParameter"
                }
              }
            }
          }
        ),
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace",
              indexing = true,
              autoSearchPaths = true
            },
          },
        },
      }
    }
  }
}
