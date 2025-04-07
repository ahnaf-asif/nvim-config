vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end
-- vim.filetype.add {
--   pattern = {
--     ["%.html"] = function(_, bufnr)
--       -- Optionally inspect file content to decide dynamically
--       local lines = vim.api.nvim_buf_get_lines(bufnr, 0, 10, false)
--       for _, line in ipairs(lines) do
--         if line:match "{{.*}}" then
--           return "gotmpl"
--         end
--       end
--       return "html" -- fallback to normal HTML
--     end,
--   },
-- }
vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
