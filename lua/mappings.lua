require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "i", "n" }, "sf", "<Cmd> w <cr>", { desc = "Save file" })
map({ "i", "n" }, "sa", "gg0vG$", { desc = "Select all" })
map({ "i", "n" }, "sb", "v%", { desc = "Select block" })
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
