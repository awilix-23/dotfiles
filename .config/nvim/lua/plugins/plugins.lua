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

  -- also code this one 
  { "m4xshen/autoclose.nvim",
    name = "autoclose"
  },

  { "vimwiki/vimwiki",
    name = "vimwiki",
    init = function()
      vim.g.vimwiki_list = {{path = '/wiki'}}
    end
  },

  -- Just code this yourself :)
  -- { "theJian/vim-invert-number-row",
  --   name = "invert-numrow",
  --   init = function()
  --     vim.g.invertmode = 'i'
  --   end
  -- }
}
