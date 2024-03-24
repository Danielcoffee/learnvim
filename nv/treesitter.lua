return {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  config = function()
--    require("telescope.builtin").find_files()
    require("nvim-treesitter.install").prefer_git = true
    require("nvim-treesitter.configs").setup({
          ensure_installed = {"cpp", "sql", "lua", "c", "html", "python", "markdown", "css", "javascript"},
          sync_install =false,
          highlight = { 
            enable = true,
            additional_vim_regex_highlighting = true,
      },
          indent = { enable = true },  
        })
      end
      }
