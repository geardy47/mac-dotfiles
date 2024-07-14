return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "css",
        "gitignore",
        -- "go",
        "scss",
        "svelte",
      },
      highlight = {
        disable = { "dart" },
      },
      illuminate = {
        disable = { "dart" },
      },
      indent = {
        disable = { "dart" },
      },
      autotag = {
        disable = { "dart" },
      },
      incremental_selection = {
        disable = { "dart" },
      },
      textobjects = {
        move = {
          disable = { "dart" },
        },
      },
    },
  },
}
