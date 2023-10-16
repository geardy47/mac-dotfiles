return {
  -- Git related plugins
  {
    "tpope/vim-fugitive",
    keys = {
      { "do2", "<cmd>diffget //2<cr>", desc = "Diff Get Target Branch" },
      { "do3", "<cmd>diffget //3<cr>", desc = "Diff Get Merge Branch" },
      { "<leader>gd", "<cmd>Gvdiffsplit!<cr>", desc = "Gvdiffsplit" },
    },
    config = function()
      require("which-key").register({
        ["d"] = {
          o = { name = "Diffget" },
        },
      })
    end,
  },
  "tpope/vim-rhubarb",
}
