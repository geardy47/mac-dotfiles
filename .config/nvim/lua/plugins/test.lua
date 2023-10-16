return {
  -- { "nvim-neotest/neotest-plenary" },
  -- { "sidlatau/neotest-dart" },
  -- {
  --   "nvim-neotest/neotest",
  --   opts = {
  --     adapters = {
  --       "neotest-plenary",
  --       "neotest-dart",
  --       -- require("neotest-dart")({
  --       --
  --       --   command = "flutter", -- Command being used to run tests. Defaults to `flutter`
  --       --   -- Change it to `fvm flutter` if using FVM
  --       --   -- change it to `dart` for Dart only tests
  --       --   use_lsp = false, -- When set Flutter outline information is used when constructing test name.
  --       -- }),
  --     },
  --   },
  -- },
  {
    "nvim-neotest/neotest",
    dependencies = { "nvim-neotest/neotest-plenary", "sidlatau/neotest-dart" },
    opts = function(_, opts)
      table.insert(opts.adapters, require("neotest-plenary"))

      table.insert(
        opts.adapters,
        require("neotest-dart")({
          command = "flutter", -- Command being used to run tests. Defaults to `flutter`
          -- Change it to `fvm flutter` if using FVM
          -- change it to `dart` for Dart only tests
          use_lsp = false, -- When set Flutter outline information is used when constructing test name.
        })
      )
    end,
  },
}
