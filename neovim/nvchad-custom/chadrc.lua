local M = {}

M.ui = {
  theme = "nord",
}

M.plugins = {
  user = require("custom.plugins"),
  override = {
    ["goolord/alpha-nvim"] = {},
    ["NvChad/ui"] = {
      override_options = {
        statusline = {
          separator_style = "block",
        },
      },
    },
    ["arcticicestudio/nord-vim"] = {},
    ["neoclide/coc.nvim"] = {},
    ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
    },
    ["scalameta/nvim-metals"] = {
      requires = { "nvim-lua/plenary.nvim" }
    },
    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
      requires = { "nvim-lua/plenary.nvim" },
    },
  },
}

return M

