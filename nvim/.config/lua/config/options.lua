vim.g.mapleader      = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt
opt.number = true;          opt.relativenumber = true
opt.cursorline = true;      opt.wrap = false
opt.scrolloff = 8;          opt.sidescrolloff = 8
opt.signcolumn = "yes"

opt.tabstop = 2;            opt.shiftwidth = 2
opt.expandtab = true;       opt.smartindent = true

opt.ignorecase = true;      opt.smartcase = true
opt.hlsearch = false;       opt.incsearch = true

opt.termguicolors = true
opt.showmode = false
opt.laststatus = 3
opt.splitbelow = true;      opt.splitright = true
opt.pumheight = 10

opt.undofile = true;        opt.swapfile = false
opt.updatetime = 250
opt.completeopt = "menu,menuone,noinsert,popup"

opt.foldmethod = "expr"
opt.foldexpr   = "v:lua.vim.treesitter.foldexpr()"
opt.foldenable = false

opt.mouse     = "a"
opt.clipboard = "unnamedplus"
opt.inccommand = "split"

