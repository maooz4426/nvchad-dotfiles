local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofmt" },
    typescript = { "biome" },
    javascript = { "biome" },

    -- css = { "prettier" },
    -- html = { "prettier" },
  },
  format_on_save = {
    timeout_ms = 1500,
    lsp_fallback = true,
  },
}
return options
