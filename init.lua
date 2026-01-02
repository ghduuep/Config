vim.g.mapleader = " "
vim.opt.number = true

require("config.lazy")
require("config.keymaps")
require("config.lsp")

vim.cmd.colorscheme("tokyonight")
