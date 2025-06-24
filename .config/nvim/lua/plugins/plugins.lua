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
        "python",
        "bash",
        "latex",
        "fortran",
        "c",
      },
      highlight = { enable = true },
    }
  },

  { "m4xshen/autoclose.nvim",
    name = "autoclose"
  },

  { "vimwiki/vimwiki",
    name = "vimwiki",
    init = function()
      vim.g.vimwiki_list = {{path = '/wiki'}}
    end
  }
}
