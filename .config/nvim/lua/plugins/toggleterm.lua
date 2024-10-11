return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    -- config = true,
    opts = function(_, _)
      require("which-key").add({
        { "<leader>ft", group = "Terminals" },
        { "<leader>", mode = "t", hidden = true },
      })
    end,
  },
}
