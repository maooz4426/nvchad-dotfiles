require("nvchad.configs.lspconfig").defaults()
local lspconfig = require("lspconfig")

vim.lsp.enable(require("configs.lsp"))

-- read :h vim.lsp.config for changing options of lsp servers
lspconfig.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        ST1000 = false,
        ST1003 = true,
        fieldalignment = false,
        fillreturns = true,
        nilness = true,
        nonewvars = true,
        shadow = true,
        undeclaredname = true,
        unreachable = true,
        unusedparams = true,
        unusedwrite = true,
        useany = true,
      },
      codelenses = {
        generate = true,
        regenerate_cgo = true,
        test = true,
        tidy = true,
        upgrade_dependency = true,
        vendor = true,
      },
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
      buildFlags = { "-tags", "integration" },
      completeUnimported = true,
      diagnosticsDelay = "500ms",
      gofumpt = true,
      matcher = "Fuzzy",
      semanticTokens = true,
      staticcheck = true,
      symbolMatcher = "fuzzy",
      usePlaceholders = true,
    },
  },
})

lspconfig.ts_ls.setup({})

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

lspconfig.gh_actions_ls.setup({})

lspconfig.tsp_server.setup({})
