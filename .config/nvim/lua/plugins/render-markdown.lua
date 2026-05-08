return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    enabled = false,
  },
  config = function()
    local markdown = require("render-markdown")

    markdown.setup({
      enabled = false,
    })

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>rr", "<cmd>RenderMarkdown buf_toggle<cr>", { desc = "Toggle markdown view" })
  end,
}
