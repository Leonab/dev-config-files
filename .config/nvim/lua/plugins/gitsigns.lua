return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
			end

			map("n", "<leader>hB", gs.toggle_current_line_blame, "Toggle line blame")
			map("n", "<leader>hd", gs.diffthis, "Diff this")
		end,
	},
}
