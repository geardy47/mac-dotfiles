return {
  {
    "kevinhwang91/nvim-ufo",
    lazy = false,
    opts = {
      provider_selector = function(_, ft, _)
        local lspWithOutFolding = { "markdown", "zsh", "css", "html", "python", "json" }
        if vim.tbl_contains(lspWithOutFolding, ft) then
          return { "treesitter", "indent" }
        end
        return { "lsp", "indent" }
      end,
      fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
        local newVirtText = {}
        local suffix = (" 󰁂 %d "):format(endLnum - lnum)
        local sufWidth = vim.fn.strdisplaywidth(suffix)
        local targetWidth = width - sufWidth
        local curWidth = 0
        for _, chunk in ipairs(virtText) do
          local chunkText = chunk[1]
          local chunkWidth = vim.fn.strdisplaywidth(chunkText)
          if targetWidth > curWidth + chunkWidth then
            table.insert(newVirtText, chunk)
          else
            chunkText = truncate(chunkText, targetWidth - curWidth)
            local hlGroup = chunk[2]
            table.insert(newVirtText, { chunkText, hlGroup })
            chunkWidth = vim.fn.strdisplaywidth(chunkText)
            -- str width returned from truncate() may less than 2nd argument, need padding
            if curWidth + chunkWidth < targetWidth then
              suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
            end
            break
          end
          curWidth = curWidth + chunkWidth
        end
        table.insert(newVirtText, { suffix, "MoreMsg" })
        return newVirtText
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
    config = function()
      vim.o.foldcolumn = "1" -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
    end,
    dependencies = {
      "kevinhwang91/promise-async",
    },
  },
}
