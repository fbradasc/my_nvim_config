require("config.lazy")

vim.lsp.enable('luals')
vim.lsp.enable('clangd')
vim.lsp.enable('cmake')
vim.lsp.enable('rust_analyzer')

--  schema = {
--    model = {
--      default = "gemini-2.5-pro-preview-05-06",
--    },
--  },
require("codecompanion").setup({
  adapters = {
    gemini = function()
      return require("codecompanion.adapters").extend("gemini", {
        env = {
          api_key = "GEMINI_API_KEY",
        },
      })
    end,
  },
})
