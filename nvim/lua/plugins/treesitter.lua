return {
  "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { 
            "c", 
            "html",
            "javascript", 
            "lua", 
            "query", 
            "regex",
            "rust",
            "scss",
            "sql",
            "terraform",
            "toml",
            "tsx",
            "typescript",
            "vim", 
            "vimdoc", 
          },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
