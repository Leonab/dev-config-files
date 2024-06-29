return {
	"mrcjkb/rustaceanvim",
	version = "^4", -- Recommended
	ft = { "rust" },
	-- server = {
	-- 	on_attach = function(client, bufnr)
	-- 		vim.keymap.set("n", "<leader>dbg", function()
	-- 			vim.cmd.RustLsp("renderDiagnostic")
	-- 		end)
	-- 	end,
	-- },
}
