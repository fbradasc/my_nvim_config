-- file/folder tree. Alternative to NetRW
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "main",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  cmd = "Neotree",
  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ source = "filesystem", toggle = true })
      end,
      desc = "Git Explorer",
    },
    {
      "<leader>ge",
      function()
        require("neo-tree.command").execute({ source = "git_status", float, toggle = true })
      end,
      desc = "Git Explorer",
    },
    {
      "<leader>be",
      function()
        require("neo-tree.command").execute({ source = "buffers", toggle = true })
      end,
      desc = "Buffer Explorer",
    },
    {
      "<leader>de",
      function()
        require("neo-tree.command").execute({ source = "document_symbols", position = "right", toggle = true })
      end,
      desc = "Buffer Explorer",
    },
  },
  opts = {
    -- fill any relevant options here
    -- use_default_mappings = false,
    log_level = "debug",
    log_to_file = "/tmp/neo-tree.log",
    window = {
      mappings = {
        ["<S-o>"] = "expand_all_subnodes",
        -- ["d"] = "show_debug_info",
      },
    },
    sources = {
      "filesystem",
      "buffers",
      "git_status",
      "document_symbols",
    },
  },
}
