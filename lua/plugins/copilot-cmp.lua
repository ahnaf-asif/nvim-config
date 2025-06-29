return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot", -- Lazy load on :Copilot command
  event = "InsertEnter", -- or "BufReadPre" to load earlier
  -- lazy = true,
  config = function()
    require("copilot").setup {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-a>", -- change if you want
          next = "<C-]>",
          prev = "<C-[>",
          dismiss = "<C-\\>",
        },
      },
      panel = { enabled = false },
    }
  end,
}
