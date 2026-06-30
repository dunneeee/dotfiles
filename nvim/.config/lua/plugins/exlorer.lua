return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false, 
    opts = {
    close_if_last_window = true,
    
    filesystem = {
      follow_current_file = {
        enabled = true, 
        leave_dirs_open = false, 
      },

      filtered_items = {
        visible = true, 
        hide_dotfiles = false, 
        hide_gitignored = true, 
        hide_by_name = {
          ".git", 
        },
        always_show = {
          ".env", 
        },
      },
    },

    window = {
      width = 35, 
      mappings = {
        
        ["l"] = "open", 
        ["h"] = "close_node", 
        ["H"] = "toggle_hidden", 
      },
    },
    },
    keys = {
      {
        "<leader>e", "<CMD>Neotree toggle<CR>", desc = "Neotree toggle"  
      }
    }
  },
  {
    "nvim-mini/mini.bufremove",
    opts = {}
  }
}

