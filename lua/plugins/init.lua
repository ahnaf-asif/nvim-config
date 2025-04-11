return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "go",
        "cpp",
        "python",
        "javascript",
        "typescript",
        "gotmpl",
        "c",
      },
    },
  },
  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = "aux", -- create a directory called aux that will contain all the auxiliary files
        out_dir = "build", -- create a directory called build that will contain all the build files
        continuous = 1, -- run the compiler in continuous module
        -- callback = 1, -- run the compiler in callback mode
      }
      vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull",
      }
    end,
  },
}
