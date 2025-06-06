vim.g.have_nerd_font = true
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'
vim.opt.background = "dark"
vim.opt.breakindent = true
-- vim.opt.colorcolumn = "80"
vim.opt.completeopt = "noinsert,menuone,noselect"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldmethod = "manual"
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.list = false
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.timeoutlen = 300
vim.opt.title = true
vim.opt.ttimeoutlen = 0
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.wildmenu = true
vim.opt.winborder = "solid" -- https://neovim.io/doc/user/options.html#'winborder'
vim.opt.wrap = true
vim.schedule(function() vim.opt.clipboard = 'unnamedplus' end)

vim.cmd([[
  filetype plugin indent on
  syntax on
]])

-- vim: ts=2 sts=2 sw=2 et
