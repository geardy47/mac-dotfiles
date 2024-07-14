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
-- vim.keymap.del("n", "<leader>ftt")
vim.keymap.set("t", "<C-wh>", "<c-\\><c-n><c-w>h", { desc = "Terminal left window navigation" })
vim.keymap.set("t", "<C-j>", "<c-\\><c-n><c-w>j", { desc = "Terminal left window navigation" })
vim.keymap.set("t", "<C-k>", "<c-\\><c-n><c-w>k", { desc = "Terminal left window navigation" })
vim.keymap.set("t", "<C-l>", "<c-\\><c-n><c-w>l", { desc = "Terminal left window navigation" })

vim.keymap.set("n", "<leader>tr", "<cmd>TestNearest<cr>", { desc = "Run nearest test" })
vim.keymap.set("n", "<leader>ta", "<cmd>TestSuite<cr>", { desc = "Run all test" })
vim.keymap.set("n", "<leader>tt", "<cmd>TestFile<cr>", { desc = "Run test in current file" })
vim.keymap.set("n", "<leader>tl", "<cmd>TestLast<cr>", { desc = "Run last test" })

-- Zettelkasten
require("which-key").register({
  ["<leader>"] = {
    z = { name = "Zettelkasten" },
    t = { name = "Test" },
  },
})
-- Create a new note after asking for its title.
vim.keymap.set("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", { desc = "New note" })
-- Open notes.
vim.keymap.set("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", { desc = "Open note" })
-- Open notes associated with the selected tags.
vim.keymap.set("n", "<leader>zt", "<Cmd>ZkTags<CR>", { desc = "Open note by tags" })
-- Search for the notes matching a given query.
vim.keymap.set(
  "n",
  "<leader>zf",
  "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>",
  { desc = "Search note by query" }
)
-- Search for the notes matching the current visual selection.
vim.keymap.set("n", "<leader>zf", ":'<,'>ZkMatch<CR>", { desc = "Search note by selection" })

vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<cr>", { desc = "Window Left" })
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<cr>", { desc = "Window Right" })
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<cr>", { desc = "Window Down" })
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<cr>", { desc = "Window Up" })
