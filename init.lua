vim.g.mapleader = " "
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true

require("config.lazy")
require("config.keymaps")
require("config.lsp")

vim.cmd.colorscheme("tokyonight")
