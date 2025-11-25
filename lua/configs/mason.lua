require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = require("configs.lsp")
})

require("mason-tool-installer").setup({
  ensure_installed = { "biome", "tailwindcss", "ruff" },
  run_on_start = true,
  start_delay = 3000,
})
