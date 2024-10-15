--commands
vim.api.nvim_command("syntax on")
vim.api.nvim_command("filetype on")
vim.api.nvim_command("filetype plugin on")
vim.api.nvim_command("syntax enable")

--basic config
vim.g.mapleader = " "

vim.wo.number = true
vim.wo.colorcolumn = "100"

vim.o.mouse = "a"

vim.opt.showmatch = true
vim.opt.autoindent = true
vim.opt.smartindent =true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

--mappings
--vim.keymap.set("n", "<C-s>", ":write<CR>")
vim.keymap.set("n", "<C-t>", vim.cmd.NvimTreeToggle)

--
require("base.plugins.lazy")

