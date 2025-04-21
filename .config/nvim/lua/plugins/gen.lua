return {
  {
    "David-Kunz/gen.nvim",
    opts = {
      model = "deepseek-r1:1.5b",
      show_model = true,
      show_prompt = true,
      no_auto_close = false,
      display_mode = "split",
    },
    -- config = function()
    --   local gen = require("gen")
    --
    --   gen.model = "codellama"
    --   gen.prompts["Create widget test"] = {
    --     prompt = "Create flutter widget test the following code, only output testWidget",
    --   }
    --
    --   vim.keymap.set("v", "<leader>]", ":Gen<CR>")
    --   vim.keymap.set("n", "<leader>]", ":Gen<CR>")
    -- end,
  },
}
