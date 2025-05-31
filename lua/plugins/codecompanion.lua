return {
  "olimorris/codecompanion.nvim",
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
--  schema = {
--    model = {
--      default = "gemini-2.5-pro-preview-05-06",
--    },
--  },
  adapters = {
    gemini = function()
      return require("codecompanion.adapters").extend("gemini", {
        env = {
          api_key = "GEMINI_API_KEY",
        },
      })
    end,
  },
  opts = {
    log_level = "debug",
  },
  dependencies = {
    -- "github/copilot.vim",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "OXY2DEV/markview.nvim",
  },
}
-- vim: ts=2 sts=2 sw=2 et
