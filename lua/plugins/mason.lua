return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    config = function()
      require "configs.mason"
    end,
    opt = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },

  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    dependencies = { "mason-org/mason.nvim", "mason-org/mason-lspconfig.nvim" },

  }
}
