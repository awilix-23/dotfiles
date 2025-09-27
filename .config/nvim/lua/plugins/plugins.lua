return {
  { "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme catppuccin]])
    end
  },

  { "nvim-treesitter/nvim-treesitter",
    name = "nvim-treesitter",
    build = ":TSUpdate",
    -- event = { "VeryLazy" },
    lazy = vim.fn.argc(-1) == 0,
    init = function(plugin)
      require("lazy.core.loader").add_to_rtp(plugin)
      require("nvim-treesitter.query_predicates")
    end,
    opts = {
      auto_install = false,
      ensure_installed = {
        "python", "lua",
        "markdown", "latex",
        "html", "css", "javascript",
        "bash",
        "c",
      },
      highlight = { enable = true },
    }
  },

  -- also code this one, eventually
  { "m4xshen/autoclose.nvim",
    name = "autoclose"
  },

  { "ThePrimeagen/harpoon",
    name = "harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      local kset = vim.keymap.set
      harpoon:setup()
      kset('n', '<leader>a', function()
        harpoon:list():add()
        end)
      kset('n', '<leader>e', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

      kset('n', '<leader>h', function()
        harpoon:list():select(1)
        end)
      kset('n', '<leader>j', function()
        harpoon:list():select(2)
        end)
      kset('n', '<leader>k', function()
        harpoon:list():select(3)
        end)
      kset('n', '<leader>l', function()
        harpoon:list():select(4)
        end)
    end
  }
}
