
return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
            ensure_installed = { "lua_ls", "pyright", "html", "cssls", "rust_analyzer", "ts_ls", "emmet_ls" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.pyright.setup({})
      local configs = require('lspconfig/configs')
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      -- HTML LSP
      lspconfig.html.setup({
        capabilities = capabilities,
        filetypes = { "html" },
      })

      -- CSS LSP
      lspconfig.cssls.setup({
        capabilities = capabilities,
        filetypes = { "css", "scss", "less" }, -- soporta varios
      })

      -- EMMET LSP
      lspconfig.emmet_ls.setup({
        -- on_attach = on_attach,
        capabilities = capabilities,
        filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
        init_options = {
          html = {
            options = {
              -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
              ["bem.enabled"] = true,
            },
          },
        }
      })   
      vim.keymap.set('n','K', vim.lsp.buf.hover, {})
      vim.keymap.set('n','gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'},'<space>ca', vim.lsp.buf.code_action, {})
    end
  }
}


