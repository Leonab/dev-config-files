return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
      { "windwp/nvim-ts-autotag", opts = {} },
      {
        "JoosepAlviste/nvim-ts-context-commentstring",
        opts = { enable_autocmd = false },
      },
    },
    config = function()
      local treesitter = require("nvim-treesitter")

      treesitter.setup({})

      -- Install missing parsers asynchronously; installed parsers are skipped.
      treesitter.install({
        "astro",
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "markdown",
        "markdown_inline",
        "lua",
        "vim",
        "gitignore",
        "c",
        "cpp",
        "python",
        "go",
        "vimdoc",
        "rust",
        "toml",
        "elixir",
        "eex",
        "heex",
      })

      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
        callback = function(ev)
          -- Leave filetypes without an installed parser on their default settings.
          local ok = pcall(vim.treesitter.start, ev.buf)
          if ok then
            vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end,
  },
}
