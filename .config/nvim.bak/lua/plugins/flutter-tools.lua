return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = function()
    local on_attach = require('config.lsp-attach').on_attach
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = true,
      lineFoldingOnly = true
    }

    require("flutter-tools").setup({
      decorations = {
        statusline = {
          app_version = true,
          device = true,
        }
      },
      debugger = {
        -- integrate with nvim dap + install dart code debugger
        enabled = true,
        run_via_dap = true, -- use dap instead of a plenary job to run flutter apps
        -- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
        -- see |:help dap.set_exception_breakpoints()| for more info
        exception_breakpoints = {},
        register_configurations = function(_)
          require("dap").configurations.dart = {}
          require("dap").set_exception_breakpoints({})
          require("dap.ext.vscode").load_launchjs()
        end,
      },
      lsp = {
        on_attach = on_attach,
        capabilities = capabilities,
      }
    })
  end
}
