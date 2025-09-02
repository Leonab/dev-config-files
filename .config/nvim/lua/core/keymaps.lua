-- set leader key to space
vim.g.mapleader = " "
vim.g.leetcode_browser = "chrome"
vim.g.leetcode_solution_filetype = "golang"

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- copy current filepath [relative]
keymap.set("n", "<leader>cpp", function()
  vim.fn.setreg("+", vim.fn.expand("%"))
end, { desc = "Copy relative file path" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>cc", "<C-^>", { desc = "Quick toggle files" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- leetcode
keymap.set("n", "<leader>lcl", ":LeetCodeList<CR>")
keymap.set("n", "<leader>lct", ":LeetCodeTest<CR>")
keymap.set("n", "<leader>lcs", ":LeetCodeSubmit<CR>")
keymap.set("n", "<leader>lci", ":LeetCodeSignIn<CR>")
keymap.set("n", "<leader>lcr", ":LeetCodeReset<CR>")

-- Diagnostic keymaps
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Buffers
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Go to [B]uffer [N]ext" })
keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Go to [B]uffer [P]rev" })

-- Tabs
keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Got to [T]ab [N]ext" })
keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "Got to [T]ab [P]rev" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Got to [T]ab [C]lose" })
