return {
  "stevearc/conform.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "zapling/mason-conform.nvim",
  },
  config = function()
    require("mason").setup({})
    require("mason-conform").setup()
    require("conform").setup()
  end,
}
