require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "pyright",
    "pylsp",
    "clangd",
    "cssls",
    "cmake"
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require("lspconfig").pyright.setup {
  capabilities = capabilities
}

require("lspconfig").clangd.setup {
  capabilities = capabilities
}

require("lspconfig").elmls.setup{
  capabilities = capabilities
}

require("lspconfig").cssls.setup{
  capabilities = capabilities
}

require("lspconfig").cmake.setup{
  capabilities = capabilities
}



