return {
  "mickael-menu/zk-nvim",
  config = function()
    require("zk").setup({
      picker = "telescope",

      lsp = {
        config = {
          on_attach = function(_, buffer) end,
        },
      },
    })
  end,
}
