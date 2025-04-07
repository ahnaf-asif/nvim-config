return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot", -- Lazy load on :Copilot command
  event = "InsertEnter", -- or "BufReadPre" to load earlier
  config = function()
    require("copilot").setup {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-l>", -- change if you want
          next = "<C-]>",
          prev = "<C-[>",
          dismiss = "<C-\\>",
        },
      },
      panel = { enabled = false },
    }
  end,
}
