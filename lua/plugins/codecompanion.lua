return {
  "olimorris/codecompanion.nvim",
  opts = {
    strategies = {
      chat = {
        adapter = "gemini",
      },
      inline = {
        adapter = "gemini",
      },
    },
    preview = {
      filetypes = { "markdown", "codecompanion" },
      ignore_buftypes = {},
    },
  },
  dependencies = {
    "github/copilot.vim",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "OXY2DEV/markview.nvim",
  },
}
