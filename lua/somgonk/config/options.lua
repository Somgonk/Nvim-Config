local opt = vim.opt

opt.autowrite = true -- Enable autowrite

opt.mouse = "a" -- Enable mouse mode

opt.showmode = false -- Dont show mode because statusline

opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.swapfile = false

opt.ignorecase = true -- Ignore case

opt.termguicolors = true -- True color support
opt.cursorline = true -- Highlights current line

if not vim.env.SSH_TTY then
  -- only set clipboard if not in ssh, to make sure the OSC 52
  -- integration works automatically. Requires Neovim >= 0.10.0
  opt.clipboard = "unnamedplus" -- Sync with system clipboard
end


-- Indent to 2 spaces
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.shiftwidth = 2
opt.tabstop = 2

opt.signcolumn = "yes"

opt.number = true -- Line numbers

local prefix = vim.fn.expand("~/.local")
opt.undodir = { prefix .. "/state/nvim/undo/"}
opt.undofile = true

