return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  config = function()
    vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<cr>", { desc = "Window Left" })
    vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<cr>", { desc = "Window Right" })
    vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<cr>", { desc = "Window Down" })
    vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<cr>", { desc = "Window Up" })
  end,
}
