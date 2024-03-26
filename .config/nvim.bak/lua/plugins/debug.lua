-- debug.lua
--
-- Shows how to use the DAP plugin to debug your code.
--
-- Primarily focused on configuring the debugger for Go, but can
-- be extended to other languages as well. That's why it's called
-- kickstart.nvim and not kitchen-sink.nvim ;)

return {
  -- NOTE: Yes, you can install new plugins here!
  'mfussenegger/nvim-dap',
  -- NOTE: And you can specify dependencies as well
  dependencies = {
    -- Creates a beautiful debugger UI
    'rcarriga/nvim-dap-ui',

    -- Installs the debug adapters for you
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',

    -- Add your own debuggers here
    'leoluz/nvim-dap-go',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('mason-nvim-dap').setup {
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_setup = true,

      -- You can provide additional configuration to the handlers,
      -- see mason-nvim-dap README for more information
      handlers = {},

      -- You'll need to check that you have the required things installed
      -- online, please don't ask me how to install them :)
      ensure_installed = {
        -- Update this to ensure that you have the debuggers for the langs you want
        'delve',
      },
    }

    -- Basic debugging keymaps, feel free to change to your liking!
    vim.keymap.set('n', '<F5>', dap.continue)
    vim.keymap.set('n', '<F1>', dap.step_into)
    vim.keymap.set('n', '<F2>', dap.step_over)
    vim.keymap.set('n', '<F3>', dap.step_out)
    vim.keymap.set('n', '<leader>Db', dap.toggle_breakpoint, { desc = 'Toggle [b]reakpoint' })
    vim.keymap.set('n', '<leader>Ds', function()
      dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
    end, { desc = '[S]et breakpoint' })
    vim.keymap.set('n', '<leader>Dc', dap.clear_breakpoints, { desc = '[C]lear breakpoint' })
    vim.keymap.set('n', '<leader>Dd', dap.continue, { desc = 'Start/Co[n]tinue' })
    vim.keymap.set('n', '<leader>Du', dapui.toggle, { desc = 'Toggle Debugger UI' })
    vim.keymap.set('n', '<leader>Dh', require('dap.ui.widgets').hover, { desc = 'Debugger Hover' })

    -- maps.n["<leader>Db"] = { function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint (F9)" }
    -- maps.n["<leader>DB"] = { function() require("dap").clear_breakpoints() end, desc = "Clear Breakpoints" }
    -- maps.n["<leader>Dc"] = { function() require("dap").continue() end, desc = "Start/Continue (F5)" }
    -- maps.n["<leader>Di"] = { function() require("dap").step_into() end, desc = "Step Into (F11)" }
    -- maps.n["<leader>Do"] = { function() require("dap").step_over() end, desc = "Step Over (F10)" }
    -- maps.n["<leader>DO"] = { function() require("dap").step_out() end, desc = "Step Out (S-F11)" }
    -- maps.n["<leader>Dq"] = { function() require("dap").close() end, desc = "Close Session" }
    -- maps.n["<leader>DQ"] = { function() require("dap").terminate() end, desc = "Terminate Session (S-F5)" }
    -- maps.n["<leader>Dp"] = { function() require("dap").pause() end, desc = "Pause (F6)" }
    -- maps.n["<leader>Dr"] = { function() require("dap").restart_frame() end, desc = "Restart (C-F5)" }
    -- maps.n["<leader>DR"] = { function() require("dap").repl.toggle() end, desc = "Toggle REPL" }
    -- if is_available "nvim-dap-ui" then
    --   maps.n["<leader>Du"] = { function() require("dapui").toggle() end, desc = "Toggle Debugger UI" }
    --   maps.n["<leader>Dh"] = { function() require("dap.ui.widgets").hover() end, desc = "Debugger Hover" }
    -- end

    -- Dap UI setup
    -- For more information, see |:help nvim-dap-ui|
    dapui.setup {
      -- Set icons to characters that are more likely to work in every terminal.
      --    Feel free to remove or use ones that you like more! :)
      --    Don't feel like these are good choices.
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = "⏏",
        },
      },
    }
    -- toggle to see last session result. Without this ,you can't see session output in case of unhandled exception.
    vim.keymap.set("n", "<F7>", dapui.toggle)

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

    -- Install golang specific config
    require('dap-go').setup()
  end,
}
