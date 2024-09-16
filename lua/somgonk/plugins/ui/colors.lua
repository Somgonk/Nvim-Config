return {
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    config = function()
      vim.cmd ([[colorscheme catppuccin]])
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function () 
      require("colorizer").setup()
    end
  }
}

