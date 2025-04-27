require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n" }, "sf", "<Cmd> w <cr>", { desc = "Save file" })
map({ "n" }, "sa", "gg0vG$", { desc = "Select all" })
map({ "n" }, "sb", "v%", { desc = "Select block" })

map("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
map("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
map("n", "za", "za", { noremap = true, silent = true, desc = "Toggle fold under cursor" })
map("n", "zA", "zA", { noremap = true, silent = true, desc = "Toggle all folds under cursor" })
map("n", "zo", "zo", { noremap = true, silent = true, desc = "Open fold under cursor" })
map("n", "zO", "zO", { noremap = true, silent = true, desc = "Open all folds under cursor" })
map("n", "zc", "zc", { noremap = true, silent = true, desc = "Close fold under cursor" })
map("n", "zC", "zC", { noremap = true, silent = true, desc = "Close all folds under cursor" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- vim.keymap.set({ "n", "t" }, "hsp", function()
--   require("nvchad.term").toggle { pos = "sp", id = "horizontalTerm" }
-- end)
--
-- vim.keymap.set({ "n", "t" }, "vsp", function()
--   require("nvchad.term").toggle { pos = "vsp", id = "verticalTerm" }
-- end)
--
-- vim.keymap.set({ "n", "t" }, "", function()
--   require("nvchad.term").toggle { pos = "float", id = "floatingTerm" }
-- end)
