return {
  {
    "kevinhwang91/nvim-ufo",
    opts = {
      provider_selector = function(_, ft, _)
        local lspWithOutFolding = { "markdown", "zsh", "css", "html", "python", "json" }
        if vim.tbl_contains(lspWithOutFolding, ft) then
          return { "treesitter", "indent" }
        end
        return { "lsp", "indent" }
      end,
    },
    keys = {
      {
        "z1m",
        function()
          require("ufo").closeFoldsWith(1)
        end,
        desc = "Close folds with 1",
        mode = "n",
      },
      {
        "z2m",
        function()
          require("ufo").closeFoldsWith(2)
        end,
        desc = "Close folds with 2",
        mode = "n",
      },
      {
        "z3m",
        function()
          require("ufo").closeFoldsWith(3)
        end,
        desc = "Close folds with 3",
        mode = "n",
      },
    },
    -- config = function()
    --   vim.keymap.set("n", "z2m", function()
    --     require("ufo").closeFoldsWith(2)
    --   end, { desc = "Close fold with 2" })
    --   vim.keymap.set("n", "z3m", function()
    --     require("ufo").closeFoldsWith(3)
    --   end, { desc = "Close fold with 3" })
    -- end,
    dependencies = {
      "kevinhwang91/promise-async",
    },
  },
}
