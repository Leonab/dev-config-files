return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- optional for floating window border decoration
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
  },
  config = function()
    require("telescope").load_extension("lazygit")

    function EditLineFromLazygit(file_path, line)
      local path = vim.fn.expand("%:p")
      if path == file_path then
        vim.cmd(tostring(line))
      else
        vim.cmd("e " .. file_path)
        vim.cmd(tostring(line))
      end
    end

    function EditFromLazygit(file_path)
      local path = vim.fn.expand("%:p")
      if path == file_path then
        return
      else
        vim.cmd("e " .. file_path)
      end
    end
  end,
}
