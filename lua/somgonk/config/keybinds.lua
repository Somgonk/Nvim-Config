local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {
  desc = "Telescope find files"
})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {
  desc = "Telescope grep"
})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {
  desc = "Telescope buffer"
})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {
  desc = "Telescope help tags"
})

local persistence = require("persistence")
vim.keymap.set("n", "<leader>qs", persistence.load, {
  desc = "Restores last session at current dir"
})

local spectre = require("spectre")
vim.keymap.set('n', '<leader>ss', spectre.toggle, {
    desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', function () spectre.open_visual({select_word=true}) end, {
    desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', spectre.open_visual, {
    desc = "Search current word"
})
vim.keymap.set('n', '<leader>sp', function () spectre.open_file_search({select_word=true}) end, {
    desc = "Search on current file"
})

vim.keymap.set('n', '<leader>ft', [[<cmd>Neotree toggle<cr>]], {
  desc = "Toggle Neo Tree"
})
