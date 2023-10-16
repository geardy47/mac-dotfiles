-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggleterm keymaps
vim.keymap.set(
  "n",
  "<leader>ftt",
  "<cmd>ToggleTerm direction=float dir=Util.get_root()<cr>",
  { desc = "Terminal Float (root dir)" }
)
vim.keymap.set("n", "<leader>fT", "<cmd>ToggleTerm direction=float<cr>", { desc = "Terminal Float (cwd)" })
vim.keymap.set(
  "n",
  "<leader>fth",
  "<cmd>ToggleTerm size=10 direction=horizontal dir=Util.get_root()<<cr>",
  { desc = "Terminal horizontal split" }
)
vim.keymap.set(
  "n",
  "<leader>ftv",
  "<cmd>ToggleTerm size=80 direction=vertical<cr>",
  { desc = "Terminal vertical split" }
)
vim.keymap.set(
  "t",
  "<leader>ft",
  "<cmd>ToggleTerm size=10 direction=horizontal<cr>",
  { desc = "Terminal horizontal split" }
)
vim.keymap.del("n", "<leader>ft")
vim.keymap.set("t", "<C-wh>", "<c-\\><c-n><c-w>h", { desc = "Terminal left window navigation" })
vim.keymap.set("t", "<C-j>", "<c-\\><c-n><c-w>j", { desc = "Terminal left window navigation" })
vim.keymap.set("t", "<C-k>", "<c-\\><c-n><c-w>k", { desc = "Terminal left window navigation" })
vim.keymap.set("t", "<C-l>", "<c-\\><c-n><c-w>l", { desc = "Terminal left window navigation" })
