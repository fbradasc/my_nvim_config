-- Improved UI and workflow for the Neovim quickfix
return {
  "stevearc/quicker.nvim",
  event = "FileType qf",
  ---@module "quicker"
  ---@type quicker.SetupOptions
  keys = {
    {
      ">",
      function()
        require("quicker").expand({ before = 2, after = 2, add_to_existing = true })
      end,
      desc = "Expand quickfix context",
    },
    {
      "<",
      function()
        require("quicker").collapse()
      end,
      desc = "Collapse quickfix context",
    },
    {
      "<esc>",
      function()
        require("quicker").close()
      end,
      desc = "Close quickfix window",
    },
  },
  opts = {},
}

-- vim: ts=2 sts=2 sw=2 et
