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
    dependencies = {
      "kevinhwang91/promise-async",
    },
  },
}
