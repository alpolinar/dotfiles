require "nvchad.options"

local opt = vim.opt
-- add yours here!
opt.relativenumber = true

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

opt.shiftwidth = 4
opt.tabstop = 4
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false
