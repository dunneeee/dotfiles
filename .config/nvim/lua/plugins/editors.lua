return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {
      check_ts = true,
      disable_filetype = { "TelescopePrompt", "spectre_panel" },
    },
  },

  {
    "kylechui/nvim-surround",
    version = "*", 
    event = "VeryLazy",
    opts = {},
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "│", highlight = "IblIndent" },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = "IblScope",
      },
      exclude = {
        filetypes = { "help", "dashboard", "neo-tree", "lazy", "mason", "notify" },
      },
    },
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = true,
      highlight = { before = "", keyword = "wide", after = "fg" },
    },
  },
}
