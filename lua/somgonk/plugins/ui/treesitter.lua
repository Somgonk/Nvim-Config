return {
	{
		"nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-context",
    config = function ()
      require'nvim-treesitter.configs'.setup ({
        modules = {},
        sync_install = false,
        auto_install = true,
        ignore_install = {},
        ensure_installed = {},
      })
      --[[
      require'treesitter-context'.setup{
        -- I cant get it to limit to one line
        enable = false,
        max_lines = 1,
        mode = 'topline',
      }
      ]]--
    end
	},
}
