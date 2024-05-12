return {
  {
    'numToStr/Comment.nvim',
    config = function()
      require("Comment").setup()
    end,
    lazy = false,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup()
    end
  }
}
