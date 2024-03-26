return {
  "nvim-telescope/telescope.nvim",
  opts = {
    -- defaults = {
    --   -- theme = "dropdown",
    --   layout_config = { width = 0.75 },
    -- },
    pickers = {
      find_files = {
        theme = "dropdown",
        layout_config = { width = 0.75 },
      },
      live_grep = {
        theme = "dropdown",
        layout_config = { width = 0.75 },
      },
      diagnostics = {
        theme = "dropdown",
        sort_by = "severity",
        layout_config = { width = 0.75 },
      },
      git_files = {
        theme = "dropdown",
        layout_config = { width = 0.75 },
      },
      lsp_references = {
        show_line = false,
        theme = "dropdown",
        layout_config = { width = 0.75 },
      },
    },
  },
}
