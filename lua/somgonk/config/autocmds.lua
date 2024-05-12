--[[
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").flat({ bufnr = args.buf })
  end,
})
]]-- 

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()

    -- try_line without arguments runs the lineers defined in `lineers_by_ft`
    -- for the current filetype
    require("lint").try_lint() 

    -- You can call `try_line` with a lineer name or a list of names to always
    -- run specific lineers, independent of the `lineers_by_ft` configuration 
  end,
})

