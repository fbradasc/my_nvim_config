-- file/folder tree. Alternative to NetRW
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "main",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "mrbjarksen/neo-tree-diagnostics.nvim",
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
        require("neo-tree.command").execute({
          source = "filesystem",
          toggle = true })
      end,
      desc = "File Explorer",
    },
    {
      "<leader>ge",
      function()
        require("neo-tree.command").execute({
          source = "git_status",
          float,
          toggle = true })
      end,
      desc = "Git Explorer",
    },
    {
      "<leader>be",
      function()
        require("neo-tree.command").execute({
          source = "buffers",
          toggle = true })
      end,
      desc = "Buffer Explorer",
    },
    {
      "<leader>se",
      function()
        require("neo-tree.command").execute({
          source = "document_symbols",
          position = "right",
          toggle = true })
      end,
      desc = "Document Symbols Explorer",
    },
    {
      "<leader>de",
      function()
        require("neo-tree.command").execute({
          source = "diagnostics",
          position = "bottom",
          toggle = true })
      end,
      desc = "Diagnostics Explorer",
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
      "diagnostics",
    },

    add_blank_line_at_top = false, -- Add a blank line at the top of the tree.

    enable_opened_markers = true,  -- Enable tracking of opened files. Required for `components.name.highlight_opened_files`
    components = {
      name = {
        highlight_opened_files = true,
      },
    },

    diagnostics = {
      auto_preview = { -- May also be set to `true` or `false`
        enabled = true, -- Whether to automatically enable preview mode
        preview_config = {}, -- Config table to pass to auto preview (for example `{ use_float = true }`)
        event = "neo_tree_buffer_enter", -- The event to enable auto preview upon (for example `"neo_tree_window_after_open"`)
      },
      bind_to_cwd = true,
      diag_sort_function = "position", -- "severity" means diagnostic items are sorted by severity in addition to their positions.
      -- "position" means diagnostic items are sorted strictly by their positions.
      -- May also be a function.
      follow_current_file = { -- May also be set to `true` or `false`
        enabled = true, -- This will find and focus the file in the active buffer every time
        always_focus_file = false, -- Focus the followed file, even when focus is currently on a diagnostic item belonging to that file
        expand_followed = true, -- Ensure the node of the followed file is expanded
        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        leave_files_open = false, -- `false` closes auto expanded files, such as with `:Neotree reveal`
      },
      group_dirs_and_files = true, -- when true, empty folders and files will be grouped together
      group_empty_dirs = true, -- when true, empty directories will be grouped together
      show_unloaded = true, -- show diagnostics from unloaded buffers
      refresh = {
        delay = 100, -- Time (in ms) to wait before updating diagnostics. Might resolve some issues with Neovim hanging.
        event = "vim_diagnostic_changed", -- Event to use for updating diagnostics (for example `"neo_tree_buffer_enter"`)
        -- Set to `false` or `"none"` to disable automatic refreshing
        max_items = 10000, -- The maximum number of diagnostic items to attempt processing
        -- Set to `false` for no maximum
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
