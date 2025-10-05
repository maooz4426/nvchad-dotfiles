return {
  {
    "mason-org/mason.nvim",
    config = function()
      require "configs.mason"
    end,
    opt = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  }
}
