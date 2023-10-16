return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    -- config = true,
    opts = {
      require("which-key").register({
        ["<leader>"] = {
          f = { t = { name = "Terminals" } },
        },
      }),
    },
  },
}
