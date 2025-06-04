-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

require("config.lazy")


vim.lsp.enable('luals')
vim.lsp.enable('clangd')
vim.lsp.enable('cmake')
vim.lsp.enable('rust_analyzer')

vim.keymap.set("n", "<leader>q", function()
  require("quicker").toggle()
end, {
  desc = "Toggle quickfix",
})
vim.keymap.set("n", "<leader>l", function()
  require("quicker").toggle({ loclist = true })
end, {
  desc = "Toggle loclist",
})

require("quicker").setup()
require("diffview").setup()

-- vim: ts=2 sts=2 sw=2 et
