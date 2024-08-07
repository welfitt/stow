


function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end


if file_exists("/etc/zshrc")
then
   return {}
else
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
          ensure_installed = { "terraform", "hcl", "lua", "bash", "c", "vim", "vimdoc", "json", "yaml", "html", "css", "javascript",  "python", "go",  "java", "dockerfile", "graphql"},
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
end
